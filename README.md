# 9-Bit_UART_Module
# What is UART?
Universal Asynchronous Receiver Transmitter
(UART) is widely used in data communication process especially
for its advantages of high reliability, long distance and low cost.

# Improved UART design:-
The design features automatic address
identification in the character itself. I have implemented the
VLSI design of the module and pass data between the proposed
9-bit UART module with a Master device. The design consists of
receiver module, and synchronous FIFOs.

# How is it improved?
Traditional way for a UART communication was to take the 8 bit data compare each bit with that of the FIFO's memory address and find whether that data was an address or a valid data input which needs to be stored for future use, because of this the latency time was increased. So, to reduce the response time instead of a 8 bit wide bus i used a 9 bit wide bus whose 9th bit is used to differentiate whether it is an address or a valid data input and once this is done based on the input the data will be stored in FIFO, which reduces a lot of processing time.

Language Used:- Verilog HDL || Simulation tool:- Xilinx Vivado || Board(FPGA) Used:- Nexys DDR4.
