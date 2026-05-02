/*module tb_comparitor_gate;

  reg a, b;
  wire gt, lt, eq;

  comparitor_1bit dut(a, b, gt, lt, eq);

  initial begin
    $display("a b  gt lt eq");
    $monitor("%b %b  %b %b %b", a, b, gt, lt, eq);

    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;

    #10 $finish;   
  end

endmodule*/



module tb_comparitor_gate;

  reg A,B;
  wire A_great_B, A_less_B, A_equal_B;
   
  magnitude_comparitor dut(A, B, A_great_B, A_less_B, A_equal_B);
  
 initial begin
   A=0; B=0;
   #10 A=0; B=1;
    #10 A=1; B=0;
    #10 A=1; B=1;
#10 $finish;
 end 
  
  initial begin
      $dumpfile("dumpfile.vcd");
    $dumpvars(0,A, B,A_great_b, A_less_B, A_equal_B);
  end
endmodule