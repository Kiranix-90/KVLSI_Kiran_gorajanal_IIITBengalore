// Code your testbench here
// or browse Examples
//KVLSI0126039
//Kiran Gorajanal

module  full_subtractor_tb;
  reg a, b, cin;
  wire diff, borrow;
  full_subtractor dut(a, b, cin, diff, borrow);
  initial begin
    a=0; b=0; cin=0;
    #10  a=0; b=0; cin=1;
        #10  a=0; b=0; cin=0;
        #10  a=0; b=1; cin=0;
        #10  a=0; b=1; cin=1;
        #10  a=1; b=0; cin=0;
        #10  a=1; b=0; cin=1;
        #10  a=1; b=1; cin=0;
        #10  a=1; b=1; cin=1;
  end
  initial begin 
    $monitor("Time=%0t a=%b b=%b cin=%b diff=%b borrow=%b", $time, a,b,cin,diff,borrow);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, full_subtractor_tb);
  end
endmodule