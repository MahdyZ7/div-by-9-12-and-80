module testbench();
	reg clk;
	output wire q;
	output reg rst;
	output wire q1;
	output wire q2;
	output wire [6:0]clk_rx;
	

	// int i = 0;
	div_by_2 d2 (.rst_n(rst), .clk_rx(clk), .clk_tx(q));
	div_by_80_50dut dut (.reset(rst),.clk(clk), .out(q));
	div_by_9_50dut dut2 (.reset(rst),.clk(clk), .out(q2));
	div_by_12_50dut dut3 (.reset(rst),.clk(clk), .out(q1));
	counter counter (.rst(rst), .clk(clk), .counter(count));
	initial begin
		rst = 0;
	  clk = 1;
	  forever #1 clk = ~clk;
	end
	
	initial begin
		$dumpvars;
		$monitor("Time: %0d ns, clk: %b, q: %b q1: %b", $time, clk, q, q1);
		rst =0;
		#2 rst =1;
	  #100 $finish;
	end
endmodule
