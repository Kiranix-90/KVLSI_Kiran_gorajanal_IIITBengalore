// Code your testbench here
// or browse Examples
module alu_tb;

  parameter N = 4;

  reg [dut.N-1:0] A, B;
  reg [2:0] opcode;
  wire [dut.N-1:0] Y;
  wire carry, comp;

  integer i;

  // DUT
  defparam dut.N = 16;
  alu  dut (A, B, opcode, Y, carry, comp);

  // Stimulus
  initial begin
    repeat(15)
    begin
      A = $random;
      B = $random;
      opcode = $random % 7;  
      #5;
    end
  end

  // Monitor
  initial begin
    $monitor("time=%0t  A=%b B=%b opcode=%b  Y=%b carry=%b comp=%b",
              $time, A, B, opcode, Y, carry, comp);
  end

  // Dump waveform
  initial begin
    $dumpfile("alu_structural.vcd");
    $dumpvars(0, alu_tb);
  end

endmodule