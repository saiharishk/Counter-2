module comp8 (gt,eq,lt,A,B); //92+92+12+12=208

input wire [7:0] A,B;
output gt,eq,lt;

wire [2:0]L1;
wire lt,gt;

comp4 Thou_Hun (a,b,c,A[7:4],B[7:4]);
comp4 Ten_Unit (d,e,f,A[3:0],B[3:0]);

mux3bit M1(L1,c,3'b001,{d,e,f});
mux3bit M2({gt,eq,lt},a,3'b100,L1);

endmodule
