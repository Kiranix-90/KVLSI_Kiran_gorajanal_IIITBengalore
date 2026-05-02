// Code your design here
//KVLSI0126039
//Kiran gorajanal
/*
//####GATE-LEVEL MODELING####
module full_adder(a, b, cin, sum, carry);
  input a, b, cin;
  output sum, carry;
  wire w1, w2, w3;
  xor(w1, a, b);
  xor(sum, w1, cin);
  and(w2, a, b);
  and(w3, w1, cin);
  or(carry, w2, w3);
endmodule*/

//#####DATA-FLOW MODELING####

module full_adder(a, b, cin, sum, carry);
  input a, b, cin;
  output sum, carry;
  assign sum = a^b^cin;
  assign carry = a&b|b&cin|a&cin;
endmodule