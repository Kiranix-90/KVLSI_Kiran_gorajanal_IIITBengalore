
//lower module mux
module mux2_1(a, b, s, y);

  input a, b, s;
  output y;

  assign y = s ? b : a;

endmodule