/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : S-2021.06-SP5-5
// Date      : Sun Mar 26 18:32:10 2023
/////////////////////////////////////////////////////////////


module div_by_9_50dut ( reset, clk, out, vdd, vss );
  input reset, clk;
  output out;
	inout vdd,  vss;
  wire   mid2, mid3, mid4, mid1, N7, N8, N9, N10, n6, n7, n8, n9, n10;

	SC8T_DFFQX1_CSC28L mid3_reg ( .D(N9), .CLK(clk), .Q(mid3), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_DFFQX1_CSC28L mid4_reg ( .D(N10), .CLK(clk), .Q(mid4), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_DFFQX1_CSC28L mid1_reg ( .D(N7), .CLK(clk), .Q(mid1), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_DFFQX1_CSC28L mid2_reg ( .D(N8), .CLK(clk), .Q(mid2), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_INVX1_MR_CSC28L U13 ( .A(reset), .Z(n9), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_INVX1_MR_CSC28L U14 ( .A(mid3), .Z(n10), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_NR2X1_CSC24L U15 ( .A(n9), .B(n10), .Z(N10), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_INVX1_MR_CSC28L U16 ( .A(mid4), .Z(n8), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_OAI21X1_MR_CSC24L U17 ( .B1(mid2), .B2(mid1), .A(n8), .Z(n6), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_NR2X1_CSC24L U18 ( .A(n6), .B(n9), .Z(N8), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_AO21IAX1_MR_CSC28L U19 ( .B1(mid2), .B2(clk), .A(n6), .Z(out), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_INVX1_MR_CSC28L U20 ( .A(mid2), .Z(n7), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_AOI211X1_CSC24L U21 ( .C1(n8), .C2(n7), .A(n9), .B(mid1), .Z(N9), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
	SC8T_AOI211X1_CSC24L U22 ( .C1(n10), .C2(mid4), .A(n9), .B(mid2), .Z(N7), VDD(vdd), .VSS(vss), .VNW_N(vdd), VPW_P(vss) );
endmodule

