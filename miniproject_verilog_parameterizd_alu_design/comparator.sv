module comparator #(parameter N=4)
(input [N-1:0] A,B, output comp);

  assign comp = (A > B);

endmodule