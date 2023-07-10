`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 02:42:12 PM
// Design Name: 
// Module Name: asyn_2_1_counter
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


module asyn_2_1_counter
(
    input clk,
    input aclr_n,
    output [1:0] count_out
);
    wire c1 ,q1, q2;
   t_ff tff1 
   (
    .clk(clk),
    .reset_n(aclr_n),
    .q(q1),
    .nq(c1)
   );
   
   t_ff tff2 
      (
       .clk(c1),
       .reset_n(aclr_n),
       .q(q2),
       .nq()
      );
      
    assign count_out = {q2,q1};
endmodule
