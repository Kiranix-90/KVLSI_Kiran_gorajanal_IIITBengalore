// Code your design here
//KVLSI0126039
//Kiran Gorajanal
//### FUL SUBTRACTOR ###

//####GATE_LEVEL MODELING####
/*

module full_subtractor(a, b, cin, diff, borrow);
  input a, b, cin;
  output diff, borrow;
  wire w1, w2, w3, w4, w5;
  xor(w1, a, b);
  xor(diff, w1, cin);
  not(w2, a);
  and(w3, w2, b);
  not(w4, w1);
  and(w5, w4, cin);
  or(borrow, w1, w5);
endmodule
*/


//####DATA- MODELING####

module full_subtractor(a, b, cin, diff, borrow);
  input a, b, cin;
  output diff, borrow;
  assign diff = a^b^cin;
  assign borrow =  (~a & b) | (~(a ^ b) & cin);
endmodule