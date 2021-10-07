module add5 (S,A,B); //30

input [4:0] A,B;
output [4:0] S;

wire [4:0] C,S;

fa COL0(C[0],S[0],	A[0],B[0],1'b0);
fa COL1(C[1],S[1],	A[1],B[1],C[0]);
fa COL2(C[2],S[2],	A[2],B[2],C[1]);
fa COL3(C[3],S[3],	A[3],B[3],C[2]);
fa COL4(C[4],S[4],	A[4],B[4],C[3]);

endmodule
