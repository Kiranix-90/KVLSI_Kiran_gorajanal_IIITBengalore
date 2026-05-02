// Code your design here
// include all required modules
////KIRAN GORAJANAL
//KVLSI2601039


`include "mux2_1.sv"
`include "mux4_1.sv"

module mux8_1(I, S, y);

  input  [7:0] I;
  input  [2:0] S;
  output y;

  wire w1, w2;

  mux4_1 m1(I[3:0], S[1:0], w1);
  mux4_1 m2(I[7:4], S[1:0], w2);
  mux2_1 m3({w1, w2}, S[2], y);

endmodule