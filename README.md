<<<<<<< HEAD
# CS202-Project-CPU

# 开发者说明

## 成员

|   学号   |  姓名  | 贡献比 |
| :------: | :----: | :----: |
| 12210652 | 张伟祎 |        |
| 12210723 | 王禀钦 |        |
| 12210360 | 黄奕凡 |        |



|        | top  | uart | ISA  |  IF  |  PC  |  ID  | Controller |  EX  | ALU  |  WB  | MEM  | VGA  | 测试 |
| :----: | :--: | :--: | :--: | :--: | :--: | :--: | :--------: | :--: | :--: | :--: | :--: | :--: | ---- |
| 张伟祎 |      |      |      |      |      |      |            |      |      |      |      |      |      |
| 王禀钦 |      |      |      |      |      |      |            |      |      |      |      |      |      |
| 黄奕凡 |      |      |      |      |      |      |            |      |      |      |      |      |      |

## 开发计划日程安排

### 5.1-5.7

project放出第一周，开始阅读项目要求，各自设计CPU部分

### 5.8-5.14

* 完成各个模块的初步设计，包括`PC, Controller, GenImm, ALU, inst_mem, data_mem`

* 一些输出和显示模块：`vga, led`

### 5.15-5.21

* 连接uart

* 连接5个阶段内部：`IF, ID, EX, MEM, WB`

* 连接顶层`top`

### 5.22-5.26



# CPU架构设计说明

## CPU 特性

* ISA（含所有指令（指令名、对应编码、使用方式），参考的ISA，基于参考ISA本次作业所做的更新或优化；寄存器（位宽和数目）等信息）； 对于异常处理的支持情况。
*  CPU 时钟、CPI ，属于单周期还是多周期CPU ，是否支持 pipeline （如支持，是几级流水，采用什么方式解决的流水线冲突问题）。
* 寻址空间设计：属于冯. 诺依曼结构还是哈佛结构；寻址单位，指令空间、数据空间的大小，栈空间的基地址。
* 对外设IO 的支持：采用单独的访问外设的指令（以及相应的指令）还是 MMIO （以及相关外设对应的地址），采用轮询还是中断的方式访问IO。

## CPU 接口

* 时钟、复位、 uart 接口、其他常用IO接口说明。

## CPU 内部结构

*  CPU 内部各子模块的接口连接关系图

<center>
    picture of RTL
</center>

*  CPU 内部子模块的设计说明（子模块端口规格及功能说明）

### programROM

* 用一个信号控制是否使用uart。如果不用uart，直接根据读入的内存地址读取出需要的指令地址值；如果要使用uart，与要使用uart时钟，和一个 active high 的 reset 控制 uart 的开关，并且需要读取指令，就把指令放在对应的位置。

### IF

* 

## Bonus 部分

* VGA

* Uart

* CEO文件创作工具

# 系统上板使用说明

* 开发板上与系统操作相关输入、输出操作说明。（如复位使用的输入设备、如何实现复位； 择；输出信号的观测区域，与输出数据的对应关系等）

# 自测说明

* 以表格的方式罗列出测试方法（仿真、上板）、测试类型（单元、集成）、测试用例（除本文及OJ 以外的用例）描述、测试结果（通过、不通过），以及最终的测试结论。

# 问题及总结

* 开发过程中遇到的问题、思考、总结。
=======
# 2024-Spring-CPU-CS202
>>>>>>> 8a83d4cda0d4cbb3e07d9273b37b330fa58d718b