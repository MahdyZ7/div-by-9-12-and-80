module counter(
	input clk,
	input rst,
	output reg [6:0] counter
);

	always@(posedge clk) begin
		if (~rst)
			counter <= 0;
		else
			counter <= counter + 1;
	end
endmodule
