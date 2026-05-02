/*module comparitor_1bit(a, b, a_gt_b, a_lt_b, a_eq_b);

  input a, b;
  output a_gt_b, a_lt_b, a_eq_b;

  wire na, nb, w1, w2;

  not (na, a);
  not (nb, b);
  
  and (a_gt_b, a, nb);
  and (a_lt_b, na, b);  
  
  and (w1, a, b);
  and (w2, na, nb);
  
  or (a_eq_b, w1, w2);

endmodule*/


module magnitude_comparitor(
  input  A,B,
	output A_less_B,A_great_B,A_equal_B
);

  assign A_great_B = (A>B);
  assign A_less_B = (A<B);
  assign A_equal_B = (A==B);
endmodule


  