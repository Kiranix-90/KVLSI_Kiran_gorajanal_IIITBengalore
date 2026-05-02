// Code your testbench here
// or browse Examples
//binary to gray

module bin2gray3_tb;
  reg[2:0]B;
  wire [2:0]G;
  
  bin2gray3 dut(B, G);
  initial begin
    repeat(10)
      begin
        B = $random;
        G = $random;
        #2;
      end
  end
  initial begin
    $monitor("Sim time=%0t, B=%b, G=%b", $time, B, G);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, bin2gray3_tb);
  end
endmodule