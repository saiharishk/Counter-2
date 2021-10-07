module mux5 (Y,s,I1,I0); //20

input [4:0] I1,I0;
output [4:0] Y;
input s;

mux M1 (Y[0],s,I1[0],I0[0]);
mux M2 (Y[1],s,I1[1],I0[1]);
mux M3 (Y[2],s,I1[2],I0[2]);
mux M4 (Y[3],s,I1[3],I0[3]);
mux M5 (Y[4],s,I1[4],I0[4]);

endmodule
