// Code your design here
//Top module
`include "mux4_1.sv"

module mux16_1(I, S, y);

  input  [15:0] I;
  input  [3:0]  S;
  output y;

  wire w0, w1, w2, w3;

  
  mux4_1 m1(I[3:0],    S[1:0], w0);
  mux4_1 m2(I[7:4],    S[1:0], w1);
  mux4_1 m3(I[11:8],   S[1:0], w2);
  mux4_1 m4(I[15:12],  S[1:0], w3);


  mux4_1 m5({w3, w2, w1, w0}, S[3:2], y);

endmodule