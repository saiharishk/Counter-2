module counter (clk,Q,rst);

input clk,rst;
output [4:0] Q;

reg [4:0] Q;

wire [4:0] inc_one,inc_two,inc_val,op;
wire gt3,lt31,eq31,s1;

always @(posedge clk or posedge rst)
begin
	if (rst) Q<=0;
	else Q <= op;
end

`ifdef DF
assign inc_one=Q+5'd1;
assign inc_two=Q+5'd2;

assign gt3 = (Q>5'd2);
assign lt31 = (Q<5'd31);
assign eq31 = (Q==5'd31);

and G1 (s1,gt3,lt31);

assign inc_val = s1?inc_two:inc_one;

assign op = eq31?5'd0:inc_val;
`endif

`ifdef STRUCT //517
//5 bit adder
add5 A1 (inc_one,Q,5'd1); //30
// 5 bit adder
add5 A2 (inc_two,Q,5'd2); //30

//5 bit comp
comp8 C1 (gt3,eq3,lt3,{3'd0,Q},8'd2); //208
//5 bit comp
comp8 C2 (gt31,eq31,lt31,{3'd0,Q},8'd31); //208
//5 bit comp

//and gate
and G1 (s1,gt3,lt31); //1

//5bit mux
mux5 M1 (inc_val,s1,inc_two,inc_one); //20
//5 bit mux
mux5 M2 (op,eq31,5'd0,inc_val); //20
`endif

endmodule
