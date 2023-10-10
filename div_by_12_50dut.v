module div_by_12_50dut(
	input	reset,
    input	clk,
    output	reg out,
	inout	VDD,
	inout	VSS
);

	reg [2:0] count;
	
	always @(posedge clk) begin
		if (~reset) begin
        	count <= 0;
			out <= 0;
    	end else begin
			count[0] <= count[1];
			count[1] <= ~count[2];
			count[2] <= count[0];
			if (~count[2] & ~count[1])
				out <= ~out;
		end
	end

endmodule