// Code your testbench here
// or browse Examples
/*
module test;
  initial begin
    $display ("%d", 8>>1+1);
  end
endmodule

module test;
  initial begin
    $display ("%d", 4+2<<1);
  end
  endmodule

module test;
  initial begin
    $display ("%d", 3&1==1);
  end
endmodule

module test;
  initial begin
    $display ("%d", ~2+3);
  end
endmodule

module test;
  initial begin
    $display ("%d", 2+3>4?7:6);
  end
endmodule


module test;
reg[3:0]a;
initial begin
  a={3'b101, 2'b11};
  $display("%b", a);
end
endmodule



module test;
  reg[7:0]a;
  initial begin
    a={2{3'b101}};
    $display("%d", a)
  end
  endmodule




/////Arithmatic operators/////////

module arithmetic_op;
  reg [3:0] i1, i2;
  initial begin
    i1 = 4'h6;
    i2 = 4'h2;
    
    $display("i1 = %0h and i2 = %0h", i1, i2);
    $display("Add: %0h", i1 + i2);
    $display("Sub: %0h", i1 - i2);
    $display("Mul: %0h", i1 * i2);
    $display("Div: %0h", i1 / i2);
    $display("pow: %0h", i2 ** 3);
    $display("Mod: %0h", i1 % i2);
    
    i1 = 4'ha; i2 = 4'h3;
    $display("\ni1 = %0h and i2 = %0h", i1, i2);
    $display("Mod: %0h", i1 % i2);
  end
endmodule


///////////LOGICAL OPERATOS////////////////////

module logical_op;
  reg [3:0] i1, i2;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("For operator: (&&): i1 = %0h && i2 = %0h: %h", i1, i2, i1 && i2);
    $display("For operator: (||): i1 = %0h || i2 = %0h: %h", i1, i2, i1 || i2);
    $display("For operator: (!) : i1 = %0h !  i2 = %0h: %h", i1, i2, !i1);
    
    i1 = 4'b1x0z; i2 = 4'b0x1x;
    $display("For operator: (&&): i1 = %0b && i2 = %0b: %h", i1, i2, i1 && i2);
    $display("For operator: (||): i1 = %0b || i2 = %0b: %h", i1, i2, i1 || i2);
  end
endmodule


///////////////EQUALITY OPERATOS////////////

module equality_op;
  reg [3:0] i1, i2;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("For operator: (==): (i1 = %0h) == (i2 = %0h) --> %h", i1, i2, i1 == i2);
    $display("For operator: (!=): (i1 = %0h) != (i2 = %0h) --> %h", i1, i2, i1 != i2);
    
    i1 = 4'b1x0z; i2 = 4'b1x0z;
    $display("For operator: (==) : (i1 = %0b) ==  (i2 = %0b) --> %0b", i1, i2, i1 == i2);
    $display("For operator: (!=) : (i1 = %0b) !=  (i2 = %0b) --> %0b", i1, i2, i1 != i2);
    
    $display("For operator: (===) : (i1 = %0b) ===  (i2 = %0b) --> %0b", i1, i2, i1 === i2);
    $display("For operator: (!==) : (i1 = %0b) !==  (i2 = %0b) --> %0b", i1, i2, i1 !== i2);
    
    i1 = 4'b1x0z; i2 = 4'b1x0x;
    $display("For operator: (===) : (i1 = %0b) ===  (i2 = %0b) --> %0b", i1, i2, i1 === i2);
    $display("For operator: (!==) : (i1 = %0b) !==  (i2 = %0b) --> %0b", i1, i2, i1 !== i2);
  end
endmodule

//////////////////////RELATIONAL OPERATORS///////////

module relational_op;
  reg [3:0] i1, i2;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("For operator: (>) : i1 = %0h >  i2 = %0h: %h", i1, i2, i1>i2);
    $display("For operator: (>=): i1 = %0h >= i2 = %0h: %h", i1, i2, i1>=i2);
    $display("For operator: (<) : i1 = %0h <  i2 = %0h: %h", i1, i2, i1<i2);
    
    i1 = 4'h2; i2 = 4'h6;
    $display("For operator: (<) : i1 = %0h <  i2 = %0h: %h", i1, i2, i1<i2);
    $display("For operator: (<=): i1 = %0h <= i2 = %0h: %h", i1, i2, i1<=i2);
    $display("For operator: (>) : i1 = %0h >  i2 = %0h: %h", i1, i2, i1>i2);
  end
endmodule


////////////////////////BITWISE OPERATOS//////

module bitwise_op;
  reg [3:0] i1, i2;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("For operator: (&) : i1 = %b &  i2 = %b: %h", i1, i2, i1 & i2);
    $display("For operator: (|) : i1 = %b |  i2 = %b: %h", i1, i2, i1 | i2);
    $display("For operator: (^) : i1 = %b ^  i2 = %b: %h", i1, i2, i1 ^ i2);
    $display("For operator: (~) : i1 = %b ~  i2 = %b: %h", i1, i2, ~i1);
    $display("For operator: (~^): i1 = %b ~^ i2 = %b: %h", i1, i2, i1 ~^ i2);
    
    i1 = 4'b1x0z; i2 = 4'b0x1x;
    $display("For operator: (&) : i1 = %b &  i2 = %b: %b", i1, i2, i1 & i2);
    $display("For operator: (|) : i1 = %b |  i2 = %b: %b", i1, i2, i1 | i2);
    $display("For operator: (^) : i1 = %b ^  i2 = %b: %b", i1, i2, i1 ^ i2);
    $display("For operator: (~) : i1 = %b ~  i2 = %b: %b", i1, i2, ~i1);
    $display("For operator: (~^): i1 = %b ~^ i2 = %b: %b", i1, i2, i1 ~^ i2);
  end
endmodule



/////////CONDITIONAL OPERATORS/////////

module conditional_op;
  reg [3:0] i1, i2;
  reg [3:0] result;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("i1 = %0h, i2 = %0h", i1, i2);
    result = (i1 > i2)? 1 : 0;
    $display("result = %0h", result);
    
    i1 = 4'h6; i2 = 4'h6;
    $display("i1 = %0h, i2 = %0h", i1, i2);
    result = (i1 > i2)? 1 : 0;
    $display("result = %0h", result);
    
    i1 = 4'b1x00; i2 = 4'b0100;
    $display("i1 = %b, i2 = %b", i1, i2);
    result = (i1 > i2)? (i1 & i2) : (i1 | i2);
    // The outcome is ambiguous then both <true_expression> and <false_expression>
    // will be evaluated and compared to compute outcome
    // <true_expression>  = i1 & i2 = 4'b0x00
    // <false_expression> = i1 | i2 = 4'b1x00
    // result = xx00;
    $display("result = %b", result);
  end
endmodule

 */
module shift_op;
  reg [7:0] i1, o1;
  reg signed [7:0] i2, o2;
  
  initial begin
    // Logical shift
    i1 = 8'b1111_0000;
    o1 = i1 >> 3;
    $display("Shift right (>>) i1 = %b by 3: %b", i1, o1);
    i1 = o1;
    
    o1 = i1 << 3;
    $display("Shift left (<<) i1 = %b by 3: %b", i1, o1);
    
    // Arithmatic shift
    i2 = 8'b1111_0000;
    o2 = i2 >>> 3;
    $display("Shift right (>>>) i2 = %b by 3: %b", i2, o2);
    i2 = o2;
    
    o2 = i2 <<< 3;
    $display("Shift left (<<<) i2 = %b by 3: %b", i2, o2);
  end
endmodule