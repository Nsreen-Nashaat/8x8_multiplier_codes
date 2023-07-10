module full_adder(
  input  wire [15:0] a,b,
  output reg [15:0] sum
);
always@(a,b)
 begin
 sum=a+b;
 end
endmodule

module full_adder_duty();
 reg [15:0]a,b;
 wire [15:0]sum;
  initial begin 
    a=16'h1234;b=16'h0000; 
    #100;
    a=16'h4213;b=16'h1234; 
    #100;
    a=16'h7542;b=16'h7579; 
    #100;
    a=16'h2345;b=16'h1012; 
    #100;
end
  full_adder q(a,b,sum);
endmodule 