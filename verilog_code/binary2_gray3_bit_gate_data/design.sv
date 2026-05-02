/*module binary_to_gray(b2,b1,b0,g2,g1,g0);
  input b2, b1, b0;
  output g2, g1, g0;
  
  buf(g2,b2);
  xor(g1, b2, b1);
  xor(g0, b1, b0);
endmodule



module binary2gray(b,g);
  input [2:0]b;
  output [2:0]g;
  
  buf b2(g[2],b[2]);
  xor x1(g[1],b[2],b[1]);
  xor x2(g[0],b[1],b[0]);
  
endmodule */

module bin2gray(
    input [3:0] bin,    // Binary input
    output [3:0] gray   // Gray code output
);
    // Data Flow Modeling using XOR
  assign gray[2] = bin[2];           // MSB is same
  assign gray[1] = bin[2] ^ bin[1];  // XOR consecutive bits
  assign gray[0] = bin[1] ^ bin[0];
    
endmodule