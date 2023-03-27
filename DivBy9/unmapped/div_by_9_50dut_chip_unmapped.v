/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : S-2021.06-SP5-5
// Date      : Sun Mar 26 17:37:34 2023
/////////////////////////////////////////////////////////////


module div_by_9_50dut ( reset, clk, out, VDD, VSS );
  input reset, clk;
  output out;
  inout VDD,  VSS;
  wire   N0, N1, mid2, mid3, mid4, N2, mid1, N3, N4, N5, N6, N7, N8, N9, N10,
         N11, N12, N13, N14, N15, N16, N17, N18;

  \**SEQGEN**  mid3_reg ( .clear(1'b0), .preset(1'b0), .next_state(N9), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid3), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mid4_reg ( .clear(1'b0), .preset(1'b0), .next_state(N10), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid4), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mid2_reg ( .clear(1'b0), .preset(1'b0), .next_state(N8), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid2), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  mid1_reg ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(mid1), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  SELECT_OP C19 ( .DATA1(1'b0), .DATA2(N4), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N7) );
  GTECH_BUF B_0 ( .A(N3), .Z(N0) );
  GTECH_BUF B_1 ( .A(reset), .Z(N1) );
  SELECT_OP C20 ( .DATA1(1'b0), .DATA2(N5), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N8) );
  SELECT_OP C21 ( .DATA1(1'b0), .DATA2(N6), .CONTROL1(N0), .CONTROL2(N1), .Z(
        N9) );
  SELECT_OP C22 ( .DATA1(1'b0), .DATA2(mid3), .CONTROL1(N0), .CONTROL2(N1), 
        .Z(N10) );
  GTECH_NOT I_0 ( .A(mid4), .Z(N2) );
  GTECH_NOT I_1 ( .A(reset), .Z(N3) );
  GTECH_AND2 C29 ( .A(N11), .B(N12), .Z(N4) );
  GTECH_NOT I_2 ( .A(mid2), .Z(N11) );
  GTECH_OR2 C31 ( .A(mid3), .B(N2), .Z(N12) );
  GTECH_AND2 C32 ( .A(N2), .B(N13), .Z(N5) );
  GTECH_OR2 C33 ( .A(mid1), .B(mid2), .Z(N13) );
  GTECH_AND2 C34 ( .A(N14), .B(N15), .Z(N6) );
  GTECH_NOT I_3 ( .A(mid1), .Z(N14) );
  GTECH_OR2 C36 ( .A(mid2), .B(mid4), .Z(N15) );
  GTECH_OR2 C37 ( .A(N17), .B(N18), .Z(out) );
  GTECH_AND2 C38 ( .A(N2), .B(N16), .Z(N17) );
  GTECH_OR2 C40 ( .A(mid1), .B(mid2), .Z(N16) );
  GTECH_AND2 C41 ( .A(clk), .B(mid2), .Z(N18) );
endmodule

