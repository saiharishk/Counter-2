module comp4 (gt,eq,lt,A,B); //34+34+12+12

input wire [3:0] A,B;
output gt,eq,lt;

wire [2:0]L1;

comp2 Thou_Hun (a,b,c,A[3:2],B[3:2]);
comp2 Ten_Unit (d,e,f,A[1:0],B[1:0]);

mux3bit M1(L1,c,3'b001,{d,e,f});
mux3bit M2({gt,eq,lt},a,3'b100,L1);

endmodule
