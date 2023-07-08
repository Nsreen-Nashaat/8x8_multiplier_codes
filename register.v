module register(
input  clk,sclr_n,clk_ena,
input [15:0]datain,
output reg [15:0]reg_out
);

always@(posedge clk,posedge clk_ena,posedge sclr_n)
 begin
  if(clk_ena==1'b1&sclr_n==1'b0)
     reg_out<=16'b0;
  else if(clk_ena==1'b1&sclr_n==1'b1)
     reg_out<=datain;
  else
     reg_out<=reg_out;

 end
endmodule

module register_duty();

  reg clk,sclr_n,clk_ena;
  reg [15:0]datain;
  wire [15:0]reg_out;
  always
   begin
    clk<=1'b1;
    #100;
    clk<=1'b0;
    #100;
   end

 initial begin
  clk_ena=1'b1;
  sclr_n=1'b0;
  datain=16'h1234;
  #200;
  clk_ena=1'b1;
  sclr_n=1'b1;
  datain=16'h1234;
   #200;
  clk_ena=1'b0;
  sclr_n=1'b0;
  datain=16'h1454;
   #200;
 end
register a(clk,sclr_n,clk_ena,datain,reg_out);
endmodule


