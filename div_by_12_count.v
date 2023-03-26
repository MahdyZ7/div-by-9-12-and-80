module div_by_12_count(
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
			if (count == 6)
				count <= 0;
			else
				count <= count + 1;
			if (count == 0)
				out = ~out;
		end
	end
	// assign out = (~mid4 & (mid1 | mid2)) | (clk & mid2);	

endmodule