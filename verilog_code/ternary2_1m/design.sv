// Code your design here
//Kiran Gorajanal
module mux_2to1 (i0, i1, s,y);
    input i0, i1, s;
    output y;


assign y = (s) ? i1 : i0;

endmodule