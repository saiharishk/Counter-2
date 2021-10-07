module comp2 (gt,eq,lt,A,B); //5+5+12+12=34

input wire [1:0] A;
input wire [1:0] B;

output gt,eq,lt;

wire [2:0] L1;
wire gt,eq,lt;
wire a,b,c,d,e,f;

comp1 TENS (a,b,c,A[1],B[1]);
comp1 UNITS (d,e,f,A[0],B[0]);
mux3bit M1(L1,c,3'b001,{d,e,f});
mux3bit M2({gt,eq,lt},a,3'b100,L1);

endmodule

