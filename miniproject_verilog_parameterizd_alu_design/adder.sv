module adder # (parameter N = 4)(A, B, Cin, Y, carry);
  input[N-1:0]A, B;
  input Cin;
  output[N-1:0]Y;
  output carry;
  
  assign {carry, Y} = A + B + +Cin;
  
endmodule