//lower module 
//Kiran Gorajanal

module mux4_1(I, S, y);

  input  [3:0] I;
  input  [1:0] S;
  output y;

  assign y = S[1] ? 
                (S[0] ? I[3] : I[2]) :
                (S[0] ? I[1] : I[0]);

endmodule