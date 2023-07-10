module multiplier_4bit_tb;
  
  reg [3:0] a;
  reg [3:0] b;
  wire [7:0] result;
  

  initial 
   begin
    
    // Test case 1: 3 * 5 = 15
    a = 3;
    b = 5;
    #100;
    
    // Test case 2: 10 * 6 = 60
    a = 10;
    b = 6;
    #100;
    
    // Test case 3: 0 * 9 = 0
    a = 0;
    b = 9;
    #100;
    
    // Test Case 4 : 5 * 6 = 39 
    a = 5 ; 
    b = 6 ;
    #100	
    $finish;
  end
  multiplier_4bit mul (a,b,result) ;
endmodule