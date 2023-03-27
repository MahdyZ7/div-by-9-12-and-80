/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : S-2021.06-SP5-5
<<<<<<< HEAD
// Date      : Mon Mar 27 10:15:37 2023
=======
// Date      : Mon Mar 27 09:11:13 2023
>>>>>>> 8db16edf3e760bac24fac6ae527f8c8d1e96900d
/////////////////////////////////////////////////////////////


module div_by_80_50dut ( reset, clk, out, VDD, VSS );
  input reset, clk;
  output out;
  inout VDD,  VSS;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27;
  wire   [5:0] count;

  \**SEQGEN**  \count_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N19), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  \**SEQGEN**  \count_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N18), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N21) );
  \**SEQGEN**  \count_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N17), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N20) );
  \**SEQGEN**  \count_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N16), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N15), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N14), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  out_reg ( .clear(1'b0), .preset(1'b0), .next_state(N24), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(out), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N23) );
  SELECT_OP C81 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N6, N5, 
        N3, N9, count[0], N8}), .CONTROL1(N0), .CONTROL2(N1), .Z({N19, N18, 
        N17, N16, N15, N14}) );
  GTECH_BUF B_0 ( .A(N7), .Z(N0) );
  GTECH_BUF B_1 ( .A(reset), .Z(N1) );
  SELECT_OP C82 ( .DATA1({1'b1, 1'b1, 1'b1}), .DATA2({N11, N10, N4}), 
        .CONTROL1(N0), .CONTROL2(N1), .Z({N22, N21, N20}) );
  SELECT_OP C83 ( .DATA1(1'b1), .DATA2(N12), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N23) );
  SELECT_OP C84 ( .DATA1(1'b0), .DATA2(N13), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N24) );
  GTECH_NOT I_0 ( .A(count[1]), .Z(N2) );
  GTECH_NOT I_1 ( .A(count[3]), .Z(N3) );
  GTECH_NOT I_2 ( .A(count[2]), .Z(N4) );
  GTECH_NOT I_3 ( .A(count[4]), .Z(N5) );
  GTECH_NOT I_4 ( .A(count[5]), .Z(N6) );
  GTECH_NOT I_5 ( .A(reset), .Z(N7) );
  GTECH_AND2 C95 ( .A(count[2]), .B(N2), .Z(N8) );
  GTECH_OR2 C96 ( .A(count[0]), .B(N2), .Z(N9) );
  GTECH_AND2 C98 ( .A(N3), .B(N4), .Z(N10) );
  GTECH_AND2 C100 ( .A(N25), .B(N4), .Z(N11) );
  GTECH_AND2 C101 ( .A(N5), .B(N3), .Z(N25) );
  GTECH_AND2 C103 ( .A(N27), .B(N4), .Z(N12) );
  GTECH_AND2 C104 ( .A(N26), .B(N3), .Z(N27) );
  GTECH_AND2 C105 ( .A(N6), .B(N5), .Z(N26) );
  GTECH_NOT I_6 ( .A(out), .Z(N13) );
endmodule

