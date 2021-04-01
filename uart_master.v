`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2021 22:19:57
// Design Name: 
// Module Name: tb_uart
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

**Test-Bench**

module uart_master();
reg ready,clk;
reg [8:0] din;
wire [7:0] mem_out;
uart_slave us(din,clk,mem_out);
initial begin
clk=0;
ready<=1;
din<=9'b100000110;
#2 din<=9'b011110000;
#4 din<=9'b100000101;
#6 din<=9'b000001110;
#5 $stop;
end
always #1 clk=~clk;
endmodule
