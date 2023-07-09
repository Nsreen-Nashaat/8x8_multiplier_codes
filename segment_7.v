module segment_7(
  input [2:0] binary,
  output reg [0:6] segmentcode);
  
  always @(*)begin
  case(binary)
    3'b000: segmentcode = 7'b1111110;
    3'b001: segmentcode = 7'b0110000;
    3'b010: segmentcode = 7'b1101101;
    3'b011: segmentcode = 7'b1111001;
    3'b100: segmentcode = 7'b0110011;
    3'b101: segmentcode = 7'b1011011;
    3'b110: segmentcode = 7'b1011111;
    3'b111: segmentcode = 7'b1110000;
    default: segmentcode = 7'b1001111;
  endcase
  end
endmodule

module segment_7DUT;
  reg [2:0] binary;
  wire [0:6] segmentcode;
  segment_7 G (
  .binary(binary),
  .segmentcode(segmentcode)
  );
  initial begin
  $monitor("input=%b output=%b",binary,segmentcode);
  binary=3'b000;
  #10
  binary=3'b001;
  #10
  binary=3'b010;
  #10
  binary=3'b011;
  #10
  binary=3'b101;
  #10
  $finish;
  end
  endmodule
