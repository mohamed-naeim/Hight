module hight (input [63:0] P, input [127:0] MK , input clk,reset,ed,
		output [63:0] C );
wire [7:0] SKx0,SKx1,SKx2,SKx3;
wire [7:0] WK0_4,WK1_5,WK2_6,WK3_7;
WK  whitening (MK,clk,reset,ed,WK0_4,WK1_5,WK2_6,WK3_7);
SK_gen  subkey (MK,clk,reset,ed,SKx0,SKx1,SKx2,SKx3);
round_funct roundfunction (P,MK,SKx0,SKx1,SKx2,SKx3,clk,reset,ed,WK0_4,WK1_5,WK2_6,WK3_7,C);
//test roundfunction (P,clk,reset,WK0_4,WK1_5,WK2_6,WK3_7,SKx0,SKx1,SKx2,SKx3,X0x,X1x,X2x,X3x,X4x,X5x,X6x,X7x);

endmodule
