/*module shifter(
  input [7:0] A,
  input [1:0] shifterControl,
  output reg [15:0] B
);

reg [15:0] temp_var = 16'b0;
temp_var = 8'b11111111 * A ;
 
always @(*)
begin
    case(shifterControl)
      2'b01 : B <= temp_var << $unsigned(4'b0101);

      2'b10 : B <= temp_var << $unsigned(4'b1000);
      default : B <= temp_var;
    endcase
end
endmodule*/
module left_shifter_8_to_16 (
  input [7:0] data_in,
  input [1:0] shift_cntrl,
  output reg [15:0] data_out
);
  reg [15:0] var = 16'b0;
   
  always @(*) begin
    case (shift_cntrl)
      // No shift
      2'b00:begin 
      var= {8'b0,data_in};
      data_out = var;
      end  
      // 4-bit shift left
      2'b01:begin 
      var= {8'b0,data_in};
      data_out = var << 4;
      end 
      // 8-bit shift left
      2'b10:begin 
      var= {8'b0,data_in};
      data_out = var <<8;
      end 
      // No shift
      2'b11:begin 
      var= {8'b0,data_in};
      data_out = var;
      end
       
      default: data_out = {8'b0,data_in}; // Default case (no shift)
    endcase
  end

endmodule

module left_shifter_8_to_16_tb;

  reg [7:0] data_in;
  reg [1:0] shift_cntrl;
  wire [15:0] data_out;

  left_shifter_8_to_16 uut (
    .data_in(data_in),
    .shift_cntrl(shift_cntrl),
    .data_out(data_out)
  );

  initial begin
    $monitor("data_in = %b, shift_cntrl = %b, data_out = %b", data_in, shift_cntrl, data_out);
    
    // Test case 1: No shift
    data_in = 8'b10101010;
    shift_cntrl = 2'b00;
    #10;

    // Test case 2: 4-bit shift left
    data_in = 8'b10101010;
    shift_cntrl = 2'b01;
    #10;

    // Test case 3: 8-bit shift left
    data_in = 8'b10101010;
    shift_cntrl = 2'b10;
    #10;

    // Test case 4: No shift
    data_in = 8'b10101010;
    shift_cntrl = 2'b11;
    #10;

    // Additional test cases can be added here

    $finish;
  end

endmodule

/* 
module shifter_DUT();
  reg [1:0] shifterCounter;
  reg [7:0] A;
  wire [15:0] B;
  initial
  begin
    shifterCounter=2'b00; A=8'b00001111; #100
    shifterCounter=2'b01; A=8'b00001111; #100
    shifterCounter=2'b10; A=8'b00001111; #100
    shifterCounter=2'b11; A=8'b00001111; #100
  end   
  shifter G(A,shifterCounter,B);

endmodule*/
/*module g(
input a,b,
output y

);

assign y = a & b;


endmodule*/
