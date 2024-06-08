# CS202-Project-CPU

# 开发者说明

## 成员

|   学号   |  姓名  | 贡献比 |
| :------: | :----: | :----: |
| 12210652 | 张伟祎 | 33.3%  |
| 12210723 | 王禀钦 | 33.3%  |
| 12210360 | 黄奕凡 | 33.3%  |

## 分工

|     | top | uart | asm1 | asm2 | 模块实现 | 模块测试 | MMIO |
| :-: | :-: | :--: | :--: | :--: | :--: | :--: | :--: |
| 张伟祎 |  √  |  √   |  √   |      |  √   |  √   |  √   |
| 王禀钦 |     |      |  √   |  √   |  √   |  √   |  √   |
| 黄奕凡 |     |  √   |  √   |      |  √   |  √   |  √   |

## 开发计划日程安排

### 5.1-5.7

project放出第一周，开始阅读项目要求，各自设计CPU部分

### 5.8-5.14

* 完成各个模块的初步设计，包括`PC, Controller, GenImm, ALU, inst_mem, data_mem`

* 一些输出和显示模块：`vga, led`

* 用Java实现txt转coe小工具

### 5.15-5.21

* 连接uart

* 连接5个阶段内部：`IF, ID, EX, MEM, WB`

* 连接顶层`top`

### 5.22-5.26

* 每个模块单元测试

* 顶层测试
### 5.27-6.3

* 修改并测试test1，test2的asm

# CPU架构设计说明

## CPU 特性

### ISA（指令集架构）

- **参考的ISA**: RISC-V
- **寄存器**: 32bit寄存器，包括通用寄存器、程序计数器（PC）、栈
- **异常处理**: 当RISC-V程序里给x0寄存器赋值时，无法写入

### 实现指令集
（参考白老师bb站点上“RV32-reference_card”，除了`ecall, ebreak, sb, sh`其余指令均实现）

* R: `add,sub,xor,or,and,sll,srl,sra,slt,sltu`
* I: `addi,xori,ori,andi,slli,srli,srai,slti,sltiu`
* Load: `lb,lbu,lw,lh,lhu`
* Store: `sw`
* B: `beq,bne,blt,bge,bltu,bgeu`
* Jump: `jal,jalr`
* U: `auipc,lui`

### 时钟与性能

- **CPU时钟**: 
	- FPGA (clk): 100MHz
	- Uart (uart_clk): 10MHz
	- CPU (cpu_clk): 10MHz
- **CPI**: 1
- **CPU类型**: 单周期（Single-Cycle）

### 寻址空间设计

- **结构类型**: 哈佛结构
- **寻址单位**: 以一个word，32bit为单位
- **指令空间与数据空间**: 都为16384bit
- **栈空间**: 
	- 栈空间的基地址`0x7fff_effc`
	- 大小：和内存等大 16384

### 对外设IO的支持

- **MMIO** CPU通过内存映射IO（MMIO）访问外设
  
    地址映射表
    
    | 输入输出设备   | 对应地址   |
    | -------------- | ---------- |
    | 拨码开关[16个] | 0xFFFFFC50 |
    | led灯          | 0xFFFFFC60 |
    | 七段数码显示管 | 0xFFFFFC70 |
    | 按钮           | 0xFFFFFC90 |
    
    
    
- **IO访问方式**: CPU是采用轮询的方法

## CPU 接口

* 时钟、复位、 uart 接口、其他常用IO接口说明。

## CPU 内部结构

> 把每个模块输入输出截图放入

*  CPU 内部各子模块的接口连接关系图

<center>
    picture of RTL
</center>

*  CPU 内部子模块的设计说明（子模块端口规格及功能说明）

### programROM

* 用一个信号控制是否使用uart。如果不用uart，直接根据读入的内存地址读取出需要的指令地址值；如果要使用uart，与要使用uart时钟，和一个 active high 的 reset 控制 uart 的开关，并且需要读取指令，就把指令放在对应的位置。

### IF
input：
* `cpu_clk`
* `rst`
* `pcSrc`: 选择信号，筛选pc是否跳转
* `imm`: 从ID来若pc跳转，需要加上的立即数

output:
* `curPC` 
* `tempPC`
* `fetch_addr`

### ID
主要结构：
* ID
	* Register
	* GenImm
	* PCSelect
		* compare

将Branch相关指令的跳转判断放在ID模块执行，决定是否跳转所需时间更短，且不需要经过后面三个阶段，效率更高，因此增添`PCSelect`模块，输出`PCSrc`返回IF阶段，实现pc跳转的选择，模块结构如下：
（图,最后再加）

关键代码：
```verilog
    always@* begin
        if (opcode == `opB) begin
            case(funct3)
                3'h0: PCSel = (compResult_s == `EQUAL)? `PCSEL_JUMP: `PCSEL_PC;
                3'h1: PCSel = (compResult_s != `EQUAL)? `PCSEL_JUMP: `PCSEL_PC;
                3'h4: PCSel = (compResult_s == `LESS)? `PCSEL_JUMP: `PCSEL_PC;
                3'h6: PCSel = (compResult_u == `LESS)? `PCSEL_JUMP: `PCSEL_PC;
                3'h5: PCSel = (compResult_s == `GREATER_EQ || compResult_s == `EQUAL)? `PCSEL_JUMP: `PCSEL_PC;
                3'h7: PCSel = (compResult_u == `GREATER_EQ || compResult_u == `EQUAL)? `PCSEL_JUMP: `PCSEL_PC;
                default PCSel = `PCSEL_PC;
            endcase
        end else if (opcode == `opJ || opcode == `opIJ) PCSel = `PCSEL_JUMP;
        else PCSel = `PCSEL_PC;
    end 
```
### EX

### DMemory
### WB
多路选择器，用来筛选写回寄存器的数据是来自data memory还是ALU。

（图）

Input:
* `clk`: cpu clock
* `memData`: 内存中取出的数据
* `MemorIOtoReg`: control bit
* `ALUResult`: ALU计算结果

Output：
* `write_back`: 写回寄存器中的数据

主要代码如下：
```verilog
always@* begin
	case(MemorIOtoReg)
		1'b1: write_back = memData;
		default: write_back = ALUResult;
	endcase
end
```
### MemOrIO



## Bonus 部分

Bonus 共包含以下三个部分
* Uart
* lui auipc
* coe文件创作工具

> bonus 对应功能点的设计说明
> 	设计思路及与周边模块的关系
> 	 核心代码及必要说明
> 测试说明：测试场景说明，测试用例，测试结果及说明。
> 问题及总结：在bonus功能点开发过程中遇到的问题、思考、总结。

### Uart

### `lui, auipc`

#### 设计说明
`lui`：

> 	设计思路及与周边模块的关系
> 	 核心代码及必要说明
> 测试说明：测试场景说明，测试用例，测试结果及说明。
> 问题及总结：在bonus功能点开发过程中遇到的问题、思考、总结。
### coe文件创作工具
# 系统上板使用说明

* 点击按钮 left [V1] 开启通信模式，所有led灯全亮，传输结束后led灯回熄灭
* 点击 center [R15] 进入CPU工作模式
* 使用后三位拨码开关选择case 选择的case会实时显示在七段数码显示管上
* 点击 right [R11]确认case选择 
* 在每个ca'se交替点击 up[U4]， down [R17] 确定输入或结束显示（结束循环）
* <img src="C:\Users\lenovo\Documents\WeChat Files\wxid_dvb4tq9ufmeh22\FileStorage\Temp\aace154a3fd9755b4ad7958cf8ac11b.png" alt="aace154a3fd9755b4ad7958cf8ac11b" style="zoom: 67%;" />

# 自测说明

> 以表格的方式罗列出测试方法（仿真、上板）、测试类型（单元、集成）、测试用例（除本文及OJ 以外的用例）描述、测试结果（通过、不通过），以及最终的测试结论。
## 总体测试

1. 出现timing的critical warning

   解决：将uart的控制时钟(upg_clk)由23MHz换位10MHz

2. 出现reset信号逻辑错误

​	解决：使用按键V1 R15 均为低电平有效 明确不同reset信号的功能

```verilog
input start_pg  
input fpga_rst, // 用于开启cpu工作模式
input start_pg, // 用于控制uart进入通信模式
wire spg_bufg;
// 分发复位信号，确保其在整个芯片上同步
    BUFG U1(.I(start_pg), .O(spg_bufg));
    
    reg upg_rst; //active high
    always @ (posedge clk) begin
            if (spg_bufg) upg_rst <= 0;
            if (fpga_rst) upg_rst <= 1;
        end
        
 wire rst = fpga_rst|!upg_rst // 用于传入各个模块进行reset
 wire kickOff = upg_rst | (~upg_rst & upg_done_o); 
```





## 单元测试

### Uart

| 测试方法 |                问题描述                | 解决方案                                                                         | 测试结果 |
| :--: | :--------------------------------: | ---------------------------------------------------------------------------- | ---- |
|  仿真  | upg_rst和fpga_rst之间的逻辑错误，无法正确开启通信模式 | 项目所用按钮按下为高电平，upg_rst用于控制uart，使用按键V1；fpga_rst用于进入工作模式，使用按键R15                 | 通过   |
|  上板  |      使用串口传输助手发送，出现了先接收后发送的问题       | 原来换个板子就好了：)                                                                  | 通过   |
|  上板  |       读内存时无法读出正确的内容，最后输出总是乱码       | 发现给inst内存和data memory的使能信号有问题，导致把inst写入data memory里，因此读出的“乱码”其实是machine code | 通过   |



### IF模块



### ID模块

1. 计算`pc`和计算`ALUResult`都通过`ALU`模块，会产生冲突。基于**下降沿更新`pc`、上升沿取指、下降沿写入Mem**的设计，最初在时钟下降沿写回`Register`。如图所示为`lw`指令，会将Mem取回的值错误的存在下一条指令对应的寄存器。

   <img src="D:\CPU\pic\1.png" alt="1" style="zoom:50%;" />

   ​	解决：在最初的解决方式中我们尝试了对`ALUResult`进行延迟处理，发现行不通后又继续往前对很多传递途径中涉及的信号进行了延迟，时钟没有解决问题。

   ​	最终我们发现一条指令的处理周期不能超过两个时钟周期，因此我们改为在**时钟上升沿写回`Register`**，解决了`lw`指令的问题，并进一步对`pc`进行半个周期的latch，以服务于指令跳转

2. 





### EX模块
`EX` 模块最为主要的是`ALU`部分

| 测试方法 |                  测试用例描述                  | 测试结果 |
| :--: | :--------------------------------------: | ---- |
|  仿真  | 测试`load`,`store`指令时`ALU`计算情况（`ALUOp=00`） | 通过   |
|  仿真  |   测试`I,R`两种类型指令在不同funct3，funct7影响下计算结果   | 通过   |
|  仿真  |                测试`auipc`                 | 通过   |
|  仿真  |        测试`jal,jalr` 能否正确存储`pc+4`         | 通过   |









### MMIO

| 测试方法 |                    测试用例描述                     | 测试结果 |
| :------: | :-------------------------------------------------: | -------- |
|   上板   | 通过拨码开关与按钮输入，通过LED和七段数码显示管输出 | 通过     |

遇到的问题及解决方案：

1. 输入输出无法交互，输出设备无显示

   解决：所有输入设备的读入和更新、所有输出设备的更新均使用组合逻辑，避免因为时钟沿更新导致的冲突和错误

2. 用按钮实现确定、跳转等功能时，因为按钮0-1状态不稳定，而读取输入和显示输出又需要在loop里反复执行，一个确认按钮很容易导致一次跳转多个循环

​	解决：使用两个按钮交替作为确认按键，通过规定常数（001，010，100）来表示不同的按钮。

```assembly
addi a5, zero, 0x4 #confrm--100--for scene choose
addi a6, zero, 0x2 #up--010
addi a7, zero, 0x1 #down--001

##场景选择##

case0:
	sw zero, 0x70(s11)
	sw zero, 0x60(s11)
loop1:
    	lw a0, 0x50(s11)
    	lw a1, 0x90(s11)
    	bne a1, a6, loop1 #a6
  
loop2:
     	sw a0, 0x60(s11)
     	lw a1, 0x90(s11)
     	bne a1, a7, loop2 #a7
     
loop3:
	sw zero, 0x60(s11)
    	lw a0, 0x50(s11)
   	lw a1, 0x90(s11)
    	bne a1, a6, loop3 #a6
  
loop4:
     	sw a0, 0x60(s11)
     	lw a1, 0x90(s11)
     	bne a1, a7, loop4 #a7

loop5:
	sw zero, 0x60(s11)
	lw a1, 0x90(s11)  
	bne a1,a6,loop5 #a6
	beq zero,zero,choose

```

3. 数码管出现闪烁问题，且显示内容与预期不符，发现原因是在同一个loop中对led灯和七段数码显示管赋不同的值，会导致硬件中ALUResult的结果反复变化，存入输出设备的值也在循环变化。

​	解决: 每个循环中如果led和七段数码显示管同时需要展示结果，则展示相同的结果，且每次进入一个case的时候先对数码管和led灯进行清空，清除上一个case中可能存储的脏数据。例如：

```assembly
sw zero, 0x70(s11)
```

4. Type Error 寄存器用混导致输出结果不正确

​	解决：以测试场景1为例，以a0专门存储输出结果，以a1专门存储按钮的结果，

<img src="D:\CPU\pic\2.png" alt="2" style="zoom:50%;" />



# 问题及总结

* 
