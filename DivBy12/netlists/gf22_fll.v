/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP5-5
// Date      : Mon Mar 27 15:22:34 2023
/////////////////////////////////////////////////////////////


module div_by_12_50dut ( reset, clk, out, VDD, VSS );
  input reset, clk;
  output out;
  inout VDD,  VSS;
  wire   N6, N7, N8, n4, n5, n6, n7;
  wire   [2:0] count;

  SC8T_DFFQX1_CSC28L out_reg ( .D(n4), .CLK(clk), .Q(out) );
  SC8T_DFFQX1_CSC28L count_reg_0_ ( .D(N6), .CLK(clk), .Q(count[0]) );
  SC8T_DFFQX1_CSC28L count_reg_2_ ( .D(N8), .CLK(clk), .Q(count[2]) );
  SC8T_DFFQX1_CSC28L count_reg_1_ ( .D(N7), .CLK(clk), .Q(count[1]) );
  SC8T_NR2X1_CSC24L U10 ( .A(count[2]), .B(count[1]), .Z(n6) );
  SC8T_OAI21X1_MR_CSC24L U11 ( .B1(out), .B2(n6), .A(reset), .Z(n5) );
  SC8T_AOI21X1_MR_CSC24L U12 ( .B1(out), .B2(n6), .A(n5), .Z(n4) );
  SC8T_INVX1_MR_CSC28L U13 ( .A(reset), .Z(n7) );
  SC8T_NR2IAX1_MR_CSC28L U14 ( .A(count[0]), .B(n7), .Z(N8) );
  SC8T_NR2IAX1_MR_CSC28L U15 ( .A(count[1]), .B(n7), .Z(N6) );
  SC8T_NR2X1_CSC24L U16 ( .A(count[2]), .B(n7), .Z(N7) );
endmodule

