// Code your testbench here
// or browse Examples
//Kiran gorajanal
module full_adder_tb;
  reg a, b, cin;
  wire sum, carry;
  full_adder dut(a, b, cin, sum, carry);
  initial begin
    a = 0; b = 0; cin = 0;
 #10 a = 0; b = 0; cin = 1;
 #10 a = 0; b = 1; cin = 0;
 #10 a = 0; b = 1; cin = 1; 
 #10 a = 1; b = 0; cin = 1;
 #10 a = 1; b = 0; cin = 1;
 #10 a = 1; b = 1; cin = 0;
 #10 a = 1; b = 1; cin = 1;  
  end
  initial begin
    $monitor ("Time=%0t a=%b b=%b cin=%b sum=%b carry=%b", $time, a, b, cin, sum, carry);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,full_adder_tb);
  end
endmodule