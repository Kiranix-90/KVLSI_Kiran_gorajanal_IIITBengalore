// Code your testbench here
// or browse Examples
module mux4_1_tb;

  reg  [3:0] I;
  reg  [1:0] s;
  wire y;

  integer i;

  // DUT
  mux4_1 dut(I, s, y);

  initial begin
    // Total inputs = 4 + 2 = 6 bits → 2^6 = 64 combinations
    for(i = 0; i < 2**6; i = i + 1)
    begin
      {I, s} = i;   // assign 6-bit value
      #5;
    end
  end

  // Monitor
  initial begin
    $monitor("Time=%0t | I=%b s=%b | y=%b",
              $time, I, s, y);
  end

  // Dump VCD
  initial begin
    $dumpfile("mux4_1.vcd");
    $dumpvars(0, mux4_1_tb);
  end

endmodule