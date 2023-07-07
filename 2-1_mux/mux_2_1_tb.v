`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 09:35:03 PM
// Design Name: 
// Module Name: mux_2_1_tb
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


module mux_2_1_tb();

    reg [3:0] in_a , in_b;
    reg sel;
    wire [3:0] out;
    
    mux_2_1 dut
    (
    .in_a(in_a),
    .in_b(in_b),
    .sel(sel),
    .out(out)
    );
    
    initial 
    begin 
        in_a=$random; in_b=$random;
        sel = 0; 
        #200;
        sel = 1; in_a=$random; in_b=$random;
        #200;
        sel = 1; in_a=$random; in_b=$random;
        #200;
        sel = 0; in_a=$random; in_b=$random;
        #200;
        sel = 0; in_a=$random; in_b=$random;
        #100;
        sel = 1; in_a=$random; in_b=$random;
        #100;
        sel = 0; in_a=$random; in_b=$random;
        #100;
        sel = 1; in_a=$random; in_b=$random;
        
end 

endmodule
