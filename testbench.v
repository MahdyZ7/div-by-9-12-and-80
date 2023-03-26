module testbench();
	reg clk;
	output wire q;
	output reg rst;
	output wire [6:0]clk_rx;
	

	div_by_9_50dut dut2 (.reset(rst),.clk(clk), .out(q));
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
