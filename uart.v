`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2021 17:22:23
// Design Name: 
// Module Name: fifo
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

module uart_slave(
    input [8:0] dout_s,clk,
    output reg [7:0] mem_out
    );
    reg [3:0] mem_cnt=0;
    reg [7:0] memory [0:7];
    reg [7:0] wr_ptr=0,rd_ptr=0;
    always@(posedge clk) begin
    case(dout_s[8])
        0:begin
            memory[wr_ptr]<=dout_s[7:0];
            mem_out<=memory[wr_ptr];
            mem_cnt = mem_cnt+1;
            $display("%d %d",mem_cnt,dout_s[8]);
          end
        1:begin
            wr_ptr<=dout_s[7:0];
            $display("%d %d",mem_cnt,dout_s[8]);
          end
    endcase
    end
endmodule