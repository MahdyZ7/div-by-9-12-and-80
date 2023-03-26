module div_by_2 (
  input      rst_n,
  input      clk_rx,
  output reg clk_tx
);

	always @ (posedge clk_rx) begin
	  if (~rst_n)
	    clk_tx <= 1'b0;
	  else
	    clk_tx <= ~clk_tx;
	end

endmodule

module gray_counter(input clk, input reset, output reg [3:0] out);
	reg [3:0] q;
always @ (posedge clk) begin
	if (!reset) begin
        q <= 0;
        out <= 0;
    end else begin
        q <= q + 1;
        `ifdef FOR_LOOP
		for (int i = 0; i < 3; i = i + 1) begin
            out[i] <= q[i+1] ^ q[i];
        end
		out[3] <= q[3];
        `else
		out <= {q[3], q[3]^q[2], q[2]^q[1], q[1]^q[0]};
        `endif
    end
end
endmodule