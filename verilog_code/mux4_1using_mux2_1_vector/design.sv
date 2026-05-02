// Code your design here
//Kiran Gorajanal


`include "mux2_1.sv"

module mux4_1 (I, s, y);
  input[3:0]I;
  input[1:0]s;
  output y;
  
  wire w1, w2;
  mux2_1 m1(I[1:0], s[0], w1);
  mux2_1 m2(I[3:2], s[0], w2);
  mux2_1 m3({w2, w1}, s[1], y);
  
endmodule