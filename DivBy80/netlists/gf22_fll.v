/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP5-5
// Date      : Mon Mar 27 11:10:21 2023
/////////////////////////////////////////////////////////////


module div_by_80_50dut ( reset, clk, out, VDD, VSS );
  input reset, clk;
  output out;
  inout VDD,  VSS;
  wire   N14, N15, N16, n2, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17;
  wire   [5:0] count;

  SC8T_DFFQNX1_CSC28L count_reg_4_ ( .D(n9), .CLK(clk), .QN(n2) );
  SC8T_DFFQX1_CSC28L count_reg_0_ ( .D(N14), .CLK(clk), .Q(count[0]) );
  SC8T_DFFQX1_CSC28L count_reg_3_ ( .D(n10), .CLK(clk), .Q(count[3]) );
  SC8T_DFFQX1_CSC28L count_reg_5_ ( .D(n8), .CLK(clk), .Q(count[5]) );
  SC8T_DFFQX1_CSC28L out_reg ( .D(n11), .CLK(clk), .Q(out) );
  SC8T_DFFQX1_CSC28L count_reg_1_ ( .D(N15), .CLK(clk), .Q(count[1]) );
  SC8T_DFFQX1_CSC28L count_reg_2_ ( .D(N16), .CLK(clk), .Q(count[2]) );
  SC8T_NR2X1_CSC24L U16 ( .A(count[3]), .B(count[2]), .Z(n16) );
  SC8T_ND2X1_CSC28L U17 ( .A(n16), .B(n2), .Z(n15) );
  SC8T_NR2X1_CSC24L U18 ( .A(count[5]), .B(n15), .Z(n14) );
  SC8T_OAI21X1_MR_CSC24L U19 ( .B1(n14), .B2(out), .A(reset), .Z(n12) );
  SC8T_AOI21X1_MR_CSC24L U20 ( .B1(n14), .B2(out), .A(n12), .Z(n11) );
  SC8T_INVX1_MR_CSC28L U21 ( .A(reset), .Z(n17) );
  SC8T_NR3IAX1_MR_CSC28L U22 ( .A(count[2]), .B(count[1]), .C(n17), .Z(N14) );
  SC8T_ND2X1_CSC28L U23 ( .A(reset), .B(count[0]), .Z(n13) );
  SC8T_INVX1_MR_CSC28L U24 ( .A(n13), .Z(N15) );
  SC8T_OAI21X1_MR_CSC24L U25 ( .B1(count[1]), .B2(n17), .A(n13), .Z(N16) );
  SC8T_AOA211X1_CSC28L U26 ( .C1(count[2]), .C2(count[3]), .B(n16), .A(reset), 
        .Z(n10) );
  SC8T_AOA211X1_CSC28L U27 ( .C1(count[5]), .C2(n15), .B(n14), .A(reset), .Z(
        n8) );
  SC8T_OAI32X1_MR_CSC24L U28 ( .B1(n17), .B2(n2), .B3(n16), .A1(n15), .A2(n17), 
        .Z(n9) );
endmodule

