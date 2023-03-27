/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : S-2021.06-SP5-5
// Date      : Mon Mar 27 14:26:36 2023
/////////////////////////////////////////////////////////////


module div_by_12_50dut ( reset, clk, out, VDD, VSS );
  input reset, clk;
  output out;
  inout VDD,  VSS;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11;
  wire   [2:0] count;

  \**SEQGEN**  out_reg ( .clear(1'b0), .preset(1'b0), .next_state(N10), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(out), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N9) );
  \**SEQGEN**  \count_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N8), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N6), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C25 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2({count[0], N2, count[1]}), 
        .CONTROL1(N0), .CONTROL2(N1), .Z({N8, N7, N6}) );
  GTECH_BUF B_0 ( .A(N3), .Z(N0) );
  GTECH_BUF B_1 ( .A(reset), .Z(N1) );
  SELECT_OP C26 ( .DATA1(1'b1), .DATA2(N4), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N9) );
  SELECT_OP C27 ( .DATA1(1'b0), .DATA2(N5), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N10) );
  GTECH_NOT I_0 ( .A(count[2]), .Z(N2) );
  GTECH_NOT I_1 ( .A(reset), .Z(N3) );
  GTECH_AND2 C34 ( .A(N2), .B(N11), .Z(N4) );
  GTECH_NOT I_2 ( .A(count[1]), .Z(N11) );
  GTECH_NOT I_3 ( .A(out), .Z(N5) );
endmodule

