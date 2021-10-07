module mux3bit (Y,s,I1,I0); //12

input [2:0] I1,I0;
output [2:0] Y;
input s;

mux M1 (Y[0],s,I1[0],I0[0]);
mux M2 (Y[1],s,I1[1],I0[1]);
mux M3 (Y[2],s,I1[2],I0[2]);

endmodule
