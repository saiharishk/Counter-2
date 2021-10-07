module tb();

reg clk,rst;
wire [4:0] Q;

counter COUT (clk,Q,rst);

initial
	begin
		rst=1;
		#2;
		rst=0;
	end
initial
	begin
		repeat (40)
		begin
			clk=1;
			#5;
			clk=0;
			#5;
		end
	end
endmodule
