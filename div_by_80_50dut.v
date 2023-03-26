module div_by_80_50dut(
	input	reset,
    input	clk,
    output	reg out,
	inout	VDD,
	inout	VSS
);

	reg [5:0] count;
	
	always @(posedge clk) begin
		if (~reset) begin
        	count <= 0;
			out <= 0;
    	end else begin
			count[0] <= count[2] & ~count[1];
			count[1] <= count[0];
			count[2] <= count[0] | ~count[1];
			if(~count[2])
				count[3] <= ~count[3];
			if(~count[3] & ~count[2])
				count[4] <= ~count[4];
			if(~count[4] & ~count[3] & ~count[2])
				count[5] <= ~count[5];
			if(~count[5] & ~count[4] & ~count[3] & ~count[2])
				out <= ~out;
		end
	end
	// assign out = (~mid4 & (mid1 | mid2)) | (clk & mid2);	

endmodule