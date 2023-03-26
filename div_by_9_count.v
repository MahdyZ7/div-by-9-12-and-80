module div_by_9_count(
	input	reset,
    input	clk,
    output	out,
	inout	VDD,
	inout	VSS
);

	reg	[3:0] count;
	reg	m1;
	reg	m2;
	always @(posedge clk) begin
		if (~reset) begin
        	count <= 0;
			m1 <= 0;
    	end else begin
			if (count == 8)
				count <= 0;
			else
				count <= count + 1;
			if (count == 0)
				m1 <= ~m1;
		end
	end
	// always @(posedge clk) begin
	// 	if (~reset) begin
	// 		m1 <= 0;
 //    	end else begin
			
	// 		// else
	// 		// 	m1 <= m1;
	// 	end
	// end
	always @(negedge clk) begin
		if (~reset) begin
			m2 <= 0;
		end else begin
			if (count == 5)
				m2 <= ~m2;
			// else
			// 	m2 <= m2;
		end
	end
	assign out = m1 ^ m2;

endmodule