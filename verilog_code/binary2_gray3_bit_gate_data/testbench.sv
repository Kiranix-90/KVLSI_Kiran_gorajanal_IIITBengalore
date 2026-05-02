/*module tb_binary_to_gray;
  reg b2,b1,b0;
  wire g2,g1,g0;
  binary_to_gray dut(b2,b1,b0,g2,g1,g0);
  initial begin
    $display("b2 b1 b0 g2 g1 g0");
    $monitor("%b %b %b %b %b %b", b2, b1, b0, g2, g1, g0);
    b2=0; b1=0; b0=0;
    #10 b2=0; b1=0; b0=1;
    #10 b2=0; b1=1; b0=0;
    #10 b2=0; b1=1; b0=1;
    #10 b2=1; b1=0; b0=1;
    #10 b2=1; b1=0; b0=1;
    #10 b2=1; b1=1; b0=1;
    #10 $finish;
  end endmodule  */


    
    module binary2gray_tb;
  reg [2:0]b;
  wire [2:0]g;
  
  binary2gray uut(b,g);
  
  initial begin
    b[2]=0;b[1]=0;b[0]=0; #10;
    b[2]=0;b[1]=0;b[0]=1; #10;
    b[2]=0;b[1]=1;b[0]=0; #10;
    b[2]=0;b[1]=1;b[0]=1; #10;
    b[2]=1;b[1]=0;b[0]=0; #10;
    b[2]=1;b[1]=0;b[0]=1; #10;
    b[2]=1;b[1]=1;b[0]=0; #10;
    b[2]=1;b[1]=1;b[0]=1; #10;
  end
  
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars(0,b,g);
  end
endmodule