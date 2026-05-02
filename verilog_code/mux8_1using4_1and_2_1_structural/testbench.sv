// Code your testbench here
// or browse Examples
module mux8_1_tb;

  reg  [7:0] I;
  reg  [2:0] S;
  wire y;

  integer i;

  // DUT Instantiation
  mux8_1 dut(I, S, y);

  initial begin
   
    for(i = 0; i < 2**11; i = i + 1)
    begin
      {I, S} = i;   
      #5;
    end
  end

  // Monitor output
  initial begin
    $monitor("Time=%0t | I=%b S=%b | y=%b",
              $time, I, S, y);
  end

  // Dump VCD file
  initial begin
    $dumpfile("mux8_1.vcd");
    $dumpvars(0, mux8_1_tb);
  end

endmodule