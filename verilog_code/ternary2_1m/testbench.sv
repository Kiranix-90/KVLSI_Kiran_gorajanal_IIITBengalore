// Code your testbench here
// or browse Examples
module tb_mux;

reg i0, i1, s;
wire y;

mux_2to1 uut(i0, i1, s, y);

initial begin
    $monitor("s=%b i0=%b i1=%b | y=%b", s, i0, i1, y);

    i0=0; i1=1; s=0;
    #10 s=1;
    #10 i0=1; i1=0; s=0;
    #10 s=1;

    #10 $finish;
end

endmodule