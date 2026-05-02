module subtractor #(parameter N = 4)(A, B, Y, borrow);
  input [N-1:0]A, B;
  output [N-1:0] Y;
  output borrow;
  
  assign {borrow, Y} = A - B;
endmodule