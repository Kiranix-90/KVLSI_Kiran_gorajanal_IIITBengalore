//lower module
//Kiran Gorajanal

module mux2_1 (I, s, y);
  input[1:0]I;
  input s;
  output y;
  
  assign y = (s)? I[1]:I[0];
  
endmodule