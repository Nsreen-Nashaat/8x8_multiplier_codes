`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2023 03:02:33 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff
(
    input clk, reset_n,
    output q, nq
);

    reg state;
       
always @ (posedge clk or negedge reset_n)
begin
    if(~reset_n)
        state <= 1'b0;
    else
        state <= ~state;
end
//    assign next_state = t ? ~state : state;
    assign q = state;
    assign nq = ~state;

endmodule
