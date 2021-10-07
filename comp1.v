module comp1 (gt,eq,lt,A,B); //5

input A;
input B;
output gt;
output lt;
output eq;

not G1 (abar, A);
not G2 (bbar, B);
and G3 (gt,A,bbar);
xnor G6 (eq,A,B);
and G10 (lt,abar,B);

endmodule
