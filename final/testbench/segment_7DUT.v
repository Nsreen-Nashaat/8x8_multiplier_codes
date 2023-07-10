`timescale 1ns / 1ps

module segment_7DUT;
  reg [2:0] binary;
  wire [0:6] segmentcode;
  segment_7 dut 
  (
    .binary(binary),
    .segmentcode(segmentcode)
  );
  
  initial 
  begin
    $monitor("input=%b output=%b",binary,segmentcode);
    binary=3'b000;
    #100
    binary=3'b001;
    #100
    binary=3'b010;
    #100
    binary=3'b011;
    #100
    binary=3'b101;
    #100
    $finish;
    end
    endmodule