


module round_funct( input [63:0] P, input  [127:0] MK, input [7:0] SKx0,SKx1,SKx2,SKx3, input clk,reset,ed,
	input [7:0] WK0_4,WK1_5,WK2_6,WK3_7 , output reg [63:0] C );

reg [7:0] X0x,X1x,X2x,X3x,X4x,X5x,X6x,X7x,X00x; 

reg [5:0] i_round = 6'd00;  // counter

reg [7:0] F0X6,F0X2,F1X0,F1X4,F1X1,F1X5,F0X3,F0X7;
wire[7:0]   P7  = P[ 63: 56];
wire[7:0]   P6  = P[ 55: 48];
wire[7:0]   P5  = P[ 47: 40];
wire[7:0]   P4  = P[ 39: 32];
wire[7:0]   P3  = P[ 31: 24];
wire[7:0]   P2  = P[ 23: 16];
wire[7:0]   P1  = P[ 15:  8];
wire[7:0]   P0  = P[  7:  0];
reg[7:0]   C7,C6,C5,C4,C3,C2,C1,C0;


// Aux Functions 
always @ (*) begin
	
	F0X6 = {X6x[6:0],X6x[7]} ^ {X6x[5:0],X6x[7:6]} ^ {X6x[0],X6x[7:1]};
	F0X2 = {X2x[6:0],X2x[7]} ^ {X2x[5:0],X2x[7:6]} ^ {X2x[0],X2x[7:1]};
	F0X3 = {X3x[6:0],X3x[7]} ^ {X3x[5:0],X3x[7:6]} ^ {X3x[0],X3x[7:1]};
	F0X7 = {X7x[6:0],X7x[7]} ^ {X7x[5:0],X7x[7:6]} ^ {X7x[0],X7x[7:1]};
	F1X0 = {X0x[4:0],X0x[7:5]} ^ {X0x[3:0],X0x[7:4]} ^ {X0x[1:0],X0x[7:2]};
	F1X4 = {X4x[4:0],X4x[7:5]} ^ {X4x[3:0],X4x[7:4]} ^ {X4x[1:0],X4x[7:2]};
	F1X5 = {X5x[4:0],X5x[7:5]} ^ {X5x[3:0],X5x[7:4]} ^ {X5x[1:0],X5x[7:2]};
	F1X1 = {X1x[4:0],X1x[7:5]} ^ {X1x[3:0],X1x[7:4]} ^ {X1x[1:0],X1x[7:2]};
	C = {C7,C6,C5,C4,C3,C2,C1,C0}; 


end


// initial - final transformation
always @(posedge clk)
begin

	if (reset == 1'b1) begin
		i_round <= 6'd00;
	
	end
	else if (i_round <6'b100110) begin
		i_round <= i_round + 6'd01;
	end

	if (i_round == 6'd01) begin
	X0x <= (ed)? P0 + WK0_4 : P0 - WK0_4 ; 
	X1x <= P1;
	X2x <= P2 ^ WK1_5 ;
	X3x <= P3; 
	X4x <= (ed)? P4 + WK2_6 : P4 - WK2_6 ;
	X5x <= P5;  
	X6x <= P6 ^ WK3_7 ; 
	X7x <= P7;
	end

	else if (i_round == 6'd02 && ed == 0) begin
	X0x <= X0x;
	X00x <= X0x;////////////////
	X1x <= X1x - (F1X0 ^ SKx0);
	X2x <= X2x;
	X3x <= X3x ^ (F0X2 + SKx1);
	X4x <= X4x;
	X5x <= X5x - (F1X4 ^ SKx2);
	X6x <= X6x;
	X7x <= X7x ^ (F0X6 + SKx3);
	end

	else if (i_round >6'd01 && i_round <6'b100010 && ed==1) begin
	X0x <= X7x ^ (F0X6 + SKx3);
	X1x <= X0x;
	X2x <= X1x + (F1X0 ^ SKx0);
	X3x <= X2x;
	X4x <= X3x ^ (F0X2 + SKx1);
	X5x <= X4x;
	X6x <= X5x + (F1X4 ^ SKx2);
	X7x <= X6x;

	end

	
	else if (i_round == 6'b100001 && ed == 1) begin
	X0x <= X0x;
	X1x <= X1x + (F1X0 ^ SKx0);
	X2x <= X2x;
	X3x <= X3x ^ (F0X2 + SKx1);
	X4x <= X4x;
	X5x <= X5x + (F1X4 ^ SKx2);
	X6x <= X6x;
	X7x <= X7x ^ (F0X6 + SKx3);

	end


	else if (i_round == 6'b100010) begin   //from previous step, there is shift in values I continued but corrected the mistake with mistake to make it work
 	C0 <= (ed)? X1x + WK0_4 : X0x - WK0_4;
 	C1 <= (ed)? X2x : X1x;
 	C2 <= (ed)? X3x ^ WK1_5 : X2x ^ WK1_5;
 	C3 <= (ed)? X4x : X3x ;
 	C4 <= (ed)? X5x + WK2_6 : X4x - WK2_6;
 	C5 <= (ed)? X6x : X5x;
 	C6 <= (ed)? X7x ^ WK3_7 : X6x ^ WK3_7;
 	C7 <= (ed)? X0x : X7x;
	end 


	if (i_round >6'd02 && i_round <6'b100010 && ed == 0) begin
	X0x <=  X1x; 
	X1x <= X2x - (F1X1 ^ SKx0) ;
	X2x <= X3x ;
	X3x <= X4x ^ (F0X3 + SKx1);
	X4x <= X5x ;
	X5x <= X6x - (F1X5 ^ SKx2);
	X6x <= X7x ;
	X7x <= X00x ^ (F0X7 + SKx3);
	X00x <= X1x;//
	end


	
end






endmodule
