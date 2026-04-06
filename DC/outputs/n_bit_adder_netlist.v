/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Sun Apr  5 05:44:12 2026
/////////////////////////////////////////////////////////////


module n_bit_adder ( clk, n, sum );
  input [3:0] n;
  output [7:0] sum;
  input clk;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;
  wire   [3:0] i;

  DFFX1_RVT \i_reg[0]  ( .D(n38), .CLK(clk), .Q(i[0]), .QN(n65) );
  DFFX1_RVT \i_reg[1]  ( .D(n37), .CLK(clk), .Q(i[1]), .QN(n64) );
  DFFX1_RVT \i_reg[2]  ( .D(n36), .CLK(clk), .Q(i[2]), .QN(n66) );
  DFFX1_RVT \i_reg[3]  ( .D(n35), .CLK(clk), .Q(i[3]), .QN(n67) );
  DFFX1_RVT \sum_reg[0]  ( .D(n34), .CLK(clk), .Q(sum[0]) );
  DFFX1_RVT \sum_reg[1]  ( .D(n33), .CLK(clk), .Q(sum[1]) );
  DFFX1_RVT \sum_reg[2]  ( .D(n32), .CLK(clk), .Q(sum[2]) );
  DFFX1_RVT \sum_reg[3]  ( .D(n31), .CLK(clk), .Q(sum[3]) );
  DFFX1_RVT \sum_reg[4]  ( .D(n30), .CLK(clk), .Q(sum[4]) );
  DFFX1_RVT \sum_reg[5]  ( .D(n29), .CLK(clk), .Q(sum[5]) );
  DFFX1_RVT \sum_reg[6]  ( .D(n28), .CLK(clk), .Q(sum[6]) );
  DFFX1_RVT \sum_reg[7]  ( .D(n27), .CLK(clk), .Q(sum[7]) );
  INVX0_RVT U38 ( .A(n62), .Y(n63) );
  INVX0_RVT U39 ( .A(n54), .Y(n52) );
  INVX0_RVT U40 ( .A(n51), .Y(n49) );
  INVX0_RVT U41 ( .A(n46), .Y(n48) );
  OA22X1_RVT U42 ( .A1(n[1]), .A2(n64), .A3(n65), .A4(n[0]), .Y(n39) );
  AO21X1_RVT U43 ( .A1(n64), .A2(n[1]), .A3(n39), .Y(n40) );
  AO222X1_RVT U44 ( .A1(n[2]), .A2(n40), .A3(n[2]), .A4(n66), .A5(n40), .A6(
        n66), .Y(n41) );
  AO222X1_RVT U45 ( .A1(n[3]), .A2(n67), .A3(n[3]), .A4(n41), .A5(n67), .A6(
        n41), .Y(n55) );
  NAND2X0_RVT U46 ( .A1(i[0]), .A2(n55), .Y(n42) );
  OA21X1_RVT U47 ( .A1(i[0]), .A2(n55), .A3(n42), .Y(n38) );
  INVX1_RVT U48 ( .A(n42), .Y(n45) );
  AO22X1_RVT U49 ( .A1(i[1]), .A2(n42), .A3(n64), .A4(n45), .Y(n37) );
  AND3X1_RVT U50 ( .A1(i[0]), .A2(i[1]), .A3(n55), .Y(n43) );
  NAND4X0_RVT U51 ( .A1(i[1]), .A2(i[2]), .A3(i[0]), .A4(n55), .Y(n44) );
  OA21X1_RVT U52 ( .A1(i[2]), .A2(n43), .A3(n44), .Y(n36) );
  HADDX1_RVT U53 ( .A0(n67), .B0(n44), .SO(n35) );
  HADDX1_RVT U54 ( .A0(sum[0]), .B0(n45), .SO(n34) );
  NAND2X0_RVT U55 ( .A1(i[0]), .A2(sum[0]), .Y(n46) );
  OA221X1_RVT U56 ( .A1(i[1]), .A2(n48), .A3(n64), .A4(n46), .A5(n55), .Y(n47)
         );
  HADDX1_RVT U57 ( .A0(sum[1]), .B0(n47), .SO(n33) );
  AO222X1_RVT U58 ( .A1(i[1]), .A2(n48), .A3(i[1]), .A4(sum[1]), .A5(n48), 
        .A6(sum[1]), .Y(n51) );
  OA221X1_RVT U59 ( .A1(i[2]), .A2(n51), .A3(n66), .A4(n49), .A5(n55), .Y(n50)
         );
  HADDX1_RVT U60 ( .A0(sum[2]), .B0(n50), .SO(n32) );
  AO222X1_RVT U61 ( .A1(i[2]), .A2(sum[2]), .A3(i[2]), .A4(n51), .A5(sum[2]), 
        .A6(n51), .Y(n54) );
  OA221X1_RVT U62 ( .A1(i[3]), .A2(n54), .A3(n67), .A4(n52), .A5(n55), .Y(n53)
         );
  HADDX1_RVT U63 ( .A0(sum[3]), .B0(n53), .SO(n31) );
  AO222X1_RVT U64 ( .A1(i[3]), .A2(sum[3]), .A3(i[3]), .A4(n54), .A5(sum[3]), 
        .A6(n54), .Y(n56) );
  AND2X1_RVT U65 ( .A1(n56), .A2(n55), .Y(n57) );
  NAND2X0_RVT U66 ( .A1(n57), .A2(sum[4]), .Y(n58) );
  OA21X1_RVT U67 ( .A1(n57), .A2(sum[4]), .A3(n58), .Y(n30) );
  INVX1_RVT U68 ( .A(n58), .Y(n59) );
  NAND2X0_RVT U69 ( .A1(n59), .A2(sum[5]), .Y(n60) );
  OA21X1_RVT U70 ( .A1(n59), .A2(sum[5]), .A3(n60), .Y(n29) );
  INVX1_RVT U71 ( .A(n60), .Y(n61) );
  NAND2X0_RVT U72 ( .A1(n61), .A2(sum[6]), .Y(n62) );
  OA21X1_RVT U73 ( .A1(n61), .A2(sum[6]), .A3(n62), .Y(n28) );
  HADDX1_RVT U74 ( .A0(sum[7]), .B0(n63), .SO(n27) );
endmodule

