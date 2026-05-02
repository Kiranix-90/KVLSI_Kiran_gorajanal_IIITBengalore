module xor_n #(parameter N = 4)(A, B, Y);
  input[N-1:0]A, B;
  output[N-1:0]Y;
  
  assign Y = A^B;
endmodule