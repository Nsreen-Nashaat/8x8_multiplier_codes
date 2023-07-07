`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 03:47:27 PM
// Design Name: 
// Module Name: asyn_2_1_counter_tb
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


module asyn_2_1_counter_tb();
    reg clk, reset;
    wire [1:0] out;
asyn_2_1_counter dut
(
    .clk(clk),
    .aclr_n(reset),
    .count_out(out)
);

initial
begin
    reset = 0;
    #2;
    reset = 1;
    #200;
end
always 
	begin 
		clk = 0; 
		#100; 
		clk = 1; 
		#100; 
	end 
endmodule
