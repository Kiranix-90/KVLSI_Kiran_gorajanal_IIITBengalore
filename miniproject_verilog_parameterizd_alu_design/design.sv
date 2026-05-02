// Code your design here


`include "and_n.sv"
`include "or_n.sv"
`include "xor_n.sv"
`include "xnor_n.sv"
`include "adder.sv"
`include "subtractor.sv"
`include "comparator.sv"



module alu #(parameter N=4)
(input [N-1:0] A,B,
 input [2:0] opcode,
 output [N-1:0] Y,
 output carry,
 output comp);

  wire [N-1:0] y_and, y_or, y_xor, y_xnor;
  wire [N-1:0] y_add, y_sub;
  wire c_add, c_sub;
  wire comp_out;

  // Instantiations
  and_n #(N) u1(A,B,y_and);
  or_n  #(N) u2(A,B,y_or);
  xor_n #(N) u3(A,B,y_xor);
  xnor_n #(N) u4(A,B,y_xnor);

  adder #(N) u5(A,B,1'b0,y_add,c_add);
  subtractor #(N) u6(A,B,y_sub,c_sub);

  comparator #(N) u7(A,B,comp_out);

  
  assign Y =
      (opcode==3'b000)? y_and  :
      (opcode==3'b001)? y_or   :
      (opcode==3'b010)? y_xor  :
      (opcode==3'b011)? y_xnor :
      (opcode==3'b100)? y_add  :
      (opcode==3'b101)? y_sub  :
                        {N{1'b0}};

  assign carry =
      (opcode==3'b100)? c_add :
      (opcode==3'b101)? c_sub :
                        1'b0;

  assign comp =
      (opcode==3'b110)? comp_out :
                        1'b0;

endmodule