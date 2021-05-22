module SK_gen (input wire [127:0] MK, input clk,reset,ed,
               output  [7:0] SKx0,SKx1,SKx2,SKx3 );
reg [6:0] dx0,dx1,dx2,dx3; // constant generation
reg [7:0] mkx0,mkx1,mkx2,mkx3; 
reg [5:0] i_round;

// wires to identify master key index
wire[7:0]   mk15 = MK[127:120]; 
wire[7:0]   mk14 = MK[119:112];
wire[7:0]   mk13 = MK[111:104];
wire[7:0]   mk12 = MK[103: 96];
wire[7:0]   mk11 = MK[ 95: 88];
wire[7:0]   mk10 = MK[ 87: 80];
wire[7:0]   mk9  = MK[ 79: 72];
wire[7:0]   mk8  = MK[ 71: 64];
wire[7:0]   mk7  = MK[ 63: 56];
wire[7:0]   mk6  = MK[ 55: 48];
wire[7:0]   mk5  = MK[ 47: 40];
wire[7:0]   mk4  = MK[ 39: 32];
wire[7:0]   mk3  = MK[ 31: 24];
wire[7:0]   mk2  = MK[ 23: 16];
wire[7:0]   mk1  = MK[ 15:  8];
wire[7:0]   mk0  = MK[  7:  0];

 
// to decrypt, you need first to put ed = 0 and reset = 1 to capture the value of i_round first which is 33
always @(posedge clk)
begin
	if (ed == 1) begin
		if (reset == 1'b1) begin
			i_round <= 6'd00;
			
		end
		else if (i_round <33) begin
			i_round <= i_round + 6'd01;
			
		end
	end 
	else begin 
		if (reset == 1'b1) begin
			i_round <= 6'd33;
			
		end
		else if (i_round > 0) begin
			i_round <= i_round - 6'd01;
			
		end 
	end
end

//dx0
always @ (posedge clk)
begin
	case (i_round)
	6'd1  : dx0 <= 7'h5a; // idx : 0
	6'd2  : dx0 <= 7'h0d; // idx : 4 
	6'd3  : dx0 <= 7'h60; // idx : 8
	6'd4  : dx0 <= 7'h66; // idx : 12 
	6'd5  : dx0 <= 7'h56; // idx : 16
	6'd6  : dx0 <= 7'h65; // idx : 20
	6'd7  : dx0 <= 7'h4e; // idx : 24
	6'd8  : dx0 <= 7'h3c; // idx : 28
	6'd9  : dx0 <= 7'h5b; // idx : 32
	6'd10 : dx0 <= 7'h05; // idx : 36
	6'd11 : dx0 <= 7'h28; // idx : 40
	6'd12 : dx0 <= 7'h6a; // idx : 44
	6'd13 : dx0 <= 7'h3e; // idx : 48
	6'd14 : dx0 <= 7'h4b; // idx : 52
	6'd15 : dx0 <= 7'h14; // idx : 56
	6'd16 : dx0 <= 7'h31; // idx : 60
	6'd17 : dx0 <= 7'h3b; // idx : 64
	6'd18 : dx0 <= 7'h63; // idx : 68
	6'd19 : dx0 <= 7'h7e; // idx : 72
	6'd20 : dx0 <= 7'h0f; // idx : 76
	6'd21 : dx0 <= 7'h70; // idx : 80
	6'd22 : dx0 <= 7'h77; // idx : 84
	6'd23 : dx0 <= 7'h4f; // idx : 88
	6'd24 : dx0 <= 7'h34; // idx : 92
	6'd25 : dx0 <= 7'h13; // idx : 96
	6'd26 : dx0 <= 7'h09; // idx : 100
	6'd27 : dx0 <= 7'h40; // idx : 104
	6'd28 : dx0 <= 7'h44; // idx : 108
	6'd29 : dx0 <= 7'h64; // idx : 112
	6'd30 : dx0 <= 7'h46; // idx : 116
	6'd31 : dx0 <= 7'h74; // idx : 120
	6'd32 : dx0 <= 7'h57; // idx : 124
	endcase
end

//dx1
always @ (posedge clk)
begin
	case (i_round)
	6'd1  : dx1 <= 7'h6d; // idx : 1
	6'd2  : dx1 <= 7'h06; // idx : 5
	6'd3  : dx1 <= 7'h30; // idx : 9
	6'd4  : dx1 <= 7'h33; // idx : 13
	6'd5  : dx1 <= 7'h2b; // idx : 17
	6'd6  : dx1 <= 7'h72; // idx : 21
	6'd7  : dx1 <= 7'h67; // idx : 25
	6'd8  : dx1 <= 7'h5e; // idx : 29
	6'd9  : dx1 <= 7'h2d; // idx : 33
	6'd10 : dx1 <= 7'h42; // idx : 37
	6'd11 : dx1 <= 7'h54; // idx : 41
	6'd12 : dx1 <= 7'h75; // idx : 45
	6'd13 : dx1 <= 7'h5f; // idx : 49
	6'd14 : dx1 <= 7'h25; // idx : 53
	6'd15 : dx1 <= 7'h0a; // idx : 57
	6'd16 : dx1 <= 7'h58; // idx : 61
	6'd17 : dx1 <= 7'h1d; // idx : 65
	6'd18 : dx1 <= 7'h71; // idx : 69
	6'd19 : dx1 <= 7'h7f; // idx : 73
	6'd20 : dx1 <= 7'h07; // idx : 77
	6'd21 : dx1 <= 7'h38; // idx : 81
	6'd22 : dx1 <= 7'h7b; // idx : 85
	6'd23 : dx1 <= 7'h27; // idx : 89
	6'd24 : dx1 <= 7'h1a; // idx : 93
	6'd25 : dx1 <= 7'h49; // idx : 97
	6'd26 : dx1 <= 7'h04; // idx : 101
	6'd27 : dx1 <= 7'h20; // idx : 105
	6'd28 : dx1 <= 7'h22; // idx : 109
	6'd29 : dx1 <= 7'h32; // idx : 113
	6'd30 : dx1 <= 7'h23; // idx : 117
	6'd31 : dx1 <= 7'h3a; // idx : 121
	6'd32 : dx1 <= 7'h6b; // idx : 125
	endcase
end

// dx2
always @(posedge clk)
	case(i_round)
	6'd1  : dx2 <= 7'h36; // idx : 2 
	6'd2  : dx2 <= 7'h03; // idx : 6
	6'd3  : dx2 <= 7'h18; // idx : 10
	6'd4  : dx2 <= 7'h59; // idx : 14
	6'd5  : dx2 <= 7'h15; // idx : 18
	6'd6  : dx2 <= 7'h39; // idx : 22
	6'd7  : dx2 <= 7'h73; // idx : 26
	6'd8  : dx2 <= 7'h6f; // idx : 30
	6'd9  : dx2 <= 7'h16; // idx : 34
	6'd10 : dx2 <= 7'h21; // idx : 38
	6'd11 : dx2 <= 7'h2a; // idx : 42
	6'd12 : dx2 <= 7'h7a; // idx : 46
	6'd13 : dx2 <= 7'h2f; // idx : 50
	6'd14 : dx2 <= 7'h52; // idx : 54
	6'd15 : dx2 <= 7'h45; // idx : 58
	6'd16 : dx2 <= 7'h6c; // idx : 62
	6'd17 : dx2 <= 7'h0e; // idx : 66
	6'd18 : dx2 <= 7'h78; // idx : 70
	6'd19 : dx2 <= 7'h3f; // idx : 74
	6'd20 : dx2 <= 7'h43; // idx : 78
	6'd21 : dx2 <= 7'h5c; // idx : 82
	6'd22 : dx2 <= 7'h3d; // idx : 86
	6'd23 : dx2 <= 7'h53; // idx : 90
	6'd24 : dx2 <= 7'h4d; // idx : 94
	6'd25 : dx2 <= 7'h24; // idx : 98
	6'd26 : dx2 <= 7'h02; // idx : 102
	6'd27 : dx2 <= 7'h10; // idx : 106
	6'd28 : dx2 <= 7'h11; // idx : 110
	6'd29 : dx2 <= 7'h19; // idx : 114
	6'd30 : dx2 <= 7'h51; // idx : 118
	6'd31 : dx2 <= 7'h5d; // idx : 122
	6'd32 : dx2 <= 7'h35; // idx : 126
	endcase	

// dx3
always @(posedge clk)
	case(i_round)
	6'd1  : dx3 <= 7'h1b; // idx : 3
	6'd2  : dx3 <= 7'h41; // idx : 7
	6'd3  : dx3 <= 7'h4c; // idx : 11
	6'd4  : dx3 <= 7'h2c; // idx : 15
	6'd5  : dx3 <= 7'h4a; // idx : 19
	6'd6  : dx3 <= 7'h1c; // idx : 23
	6'd7  : dx3 <= 7'h79; // idx : 27
	6'd8  : dx3 <= 7'h37; // idx : 31
	6'd9  : dx3 <= 7'h0b; // idx : 35
	6'd10 : dx3 <= 7'h50; // idx : 39
	6'd11 : dx3 <= 7'h55; // idx : 43
	6'd12 : dx3 <= 7'h7d; // idx : 47
	6'd13 : dx3 <= 7'h17; // idx : 51
	6'd14 : dx3 <= 7'h29; // idx : 55
	6'd15 : dx3 <= 7'h62; // idx : 59
	6'd16 : dx3 <= 7'h76; // idx : 63
	6'd17 : dx3 <= 7'h47; // idx : 67
	6'd18 : dx3 <= 7'h7c; // idx : 71
	6'd19 : dx3 <= 7'h1f; // idx : 75
	6'd20 : dx3 <= 7'h61; // idx : 79
	6'd21 : dx3 <= 7'h6e; // idx : 83
	6'd22 : dx3 <= 7'h1e; // idx : 87
	6'd23 : dx3 <= 7'h69; // idx : 91
	6'd24 : dx3 <= 7'h26; // idx : 95
	6'd25 : dx3 <= 7'h12; // idx : 99
	6'd26 : dx3 <= 7'h01; // idx : 103
	6'd27 : dx3 <= 7'h08; // idx : 107
	6'd28 : dx3 <= 7'h48; // idx : 111
	6'd29 : dx3 <= 7'h0c; // idx : 115
	6'd30 : dx3 <= 7'h68; // idx : 119
	6'd31 : dx3 <= 7'h2e; // idx : 123
	6'd32 : dx3 <= 7'h5a; // idx : 127
	endcase	

// mkx0
always @(posedge clk)
	case(i_round)
	6'd1  : mkx0 <= mk0 ; // idx : 0
	6'd2  : mkx0 <= mk4 ; // idx : 4    
	6'd3  : mkx0 <= mk8 ; // idx : 8
	6'd4  : mkx0 <= mk12; // idx : 12 
	6'd5  : mkx0 <= mk7; // idx : 16
	6'd6  : mkx0 <= mk3; // idx : 20
	6'd7  : mkx0 <= mk15; // idx : 24
	6'd8  : mkx0 <= mk11; // idx : 28
	6'd9  : mkx0 <= mk6 ; // idx : 32
	6'd10 : mkx0 <= mk2 ; // idx : 36
	6'd11 : mkx0 <= mk14; // idx : 40
	6'd12 : mkx0 <= mk10; // idx : 44
	6'd13 : mkx0 <= mk5 ; // idx : 48
	6'd14 : mkx0 <= mk1 ; // idx : 52
	6'd15 : mkx0 <= mk13; // idx : 56
	6'd16 : mkx0 <= mk9 ; // idx : 60
	6'd17 : mkx0 <= mk4 ; // idx : 64
	6'd18 : mkx0 <= mk0 ; // idx : 68
	6'd19 : mkx0 <= mk12; // idx : 72
	6'd20 : mkx0 <= mk8 ; // idx : 76
	6'd21 : mkx0 <= mk3 ; // idx : 80
	6'd22 : mkx0 <= mk7 ; // idx : 84
	6'd23 : mkx0 <= mk11; // idx : 88
	6'd24 : mkx0 <= mk15; // idx : 92
	6'd25 : mkx0 <= mk2 ; // idx : 96
	6'd26 : mkx0 <= mk6 ; // idx : 100
	6'd27 : mkx0 <= mk10; // idx : 104
	6'd28 : mkx0 <= mk14; // idx : 108
	6'd29 : mkx0 <= mk1 ; // idx : 112
	6'd30 : mkx0 <= mk5 ; // idx : 116
	6'd31 : mkx0 <= mk9 ; // idx : 120
	6'd32 : mkx0 <= mk13; // idx : 124
	endcase	

// mkx1
always @(posedge clk)
	case(i_round)
	6'd1  : mkx1 <= mk1 ; // idx : 1
	6'd2  : mkx1 <= mk5 ; // idx : 5    
	6'd3  : mkx1 <= mk9 ; // idx : 9
	6'd4  : mkx1 <= mk13; // idx : 13
	6'd5  : mkx1 <= mk0 ; // idx : 17
	6'd6  : mkx1 <= mk4 ; // idx : 21
	6'd7  : mkx1 <= mk8 ; // idx : 25
	6'd8  : mkx1 <= mk12; // idx : 29
	6'd9  : mkx1 <= mk7 ; // idx : 33
	6'd10 : mkx1 <= mk3 ; // idx : 37
	6'd11 : mkx1 <= mk15; // idx : 41
	6'd12 : mkx1 <= mk11; // idx : 45
	6'd13 : mkx1 <= mk6 ; // idx : 49
	6'd14 : mkx1 <= mk2 ; // idx : 53
	6'd15 : mkx1 <= mk14; // idx : 57
	6'd16 : mkx1 <= mk10; // idx : 61
	6'd17 : mkx1 <= mk5 ; // idx : 65
	6'd18 : mkx1 <= mk1 ; // idx : 69
	6'd19 : mkx1 <= mk13; // idx : 73
	6'd20 : mkx1 <= mk9 ; // idx : 77
	6'd21 : mkx1 <= mk4 ; // idx : 81
	6'd22 : mkx1 <= mk0 ; // idx : 85
	6'd23 : mkx1 <= mk12; // idx : 89
	6'd24 : mkx1 <= mk8 ; // idx : 93
	6'd25 : mkx1 <= mk3 ; // idx : 97
	6'd26 : mkx1 <= mk7 ; // idx : 101
	6'd27 : mkx1 <= mk11; // idx : 105
	6'd28 : mkx1 <= mk15; // idx : 109
	6'd29 : mkx1 <= mk2 ; // idx : 113
	6'd30 : mkx1 <= mk6 ; // idx : 117
	6'd31 : mkx1 <= mk10; // idx : 121
	6'd32 : mkx1 <= mk14; // idx : 125
	endcase	

// mkx2
always @(posedge clk)
	case(i_round)
	6'd1  : mkx2 <= mk2 ; // idx : 2 
	6'd2  : mkx2 <= mk6 ; // idx : 6    
	6'd3  : mkx2 <= mk10; // idx : 10
	6'd4  : mkx2 <= mk14; // idx : 14
	6'd5  : mkx2 <= mk1 ; // idx : 18
	6'd6  : mkx2 <= mk5 ; // idx : 22
	6'd7  : mkx2 <= mk9 ; // idx : 26
	6'd8  : mkx2 <= mk13; // idx : 30
	6'd9  : mkx2 <= mk0 ; // idx : 34
	6'd10 : mkx2 <= mk4 ; // idx : 38
	6'd11 : mkx2 <= mk8 ; // idx : 42
	6'd12 : mkx2 <= mk12; // idx : 46
	6'd13 : mkx2 <= mk7 ; // idx : 50
	6'd14 : mkx2 <= mk3 ; // idx : 54
	6'd15 : mkx2 <= mk15; // idx : 58
	6'd16 : mkx2 <= mk11; // idx : 62
	6'd17 : mkx2 <= mk6 ; // idx : 66
	6'd18 : mkx2 <= mk2 ; // idx : 70
	6'd19 : mkx2 <= mk14; // idx : 74
	6'd20 : mkx2 <= mk10; // idx : 78
	6'd21 : mkx2 <= mk5 ; // idx : 82
	6'd22 : mkx2 <= mk1 ; // idx : 86
	6'd23 : mkx2 <= mk13; // idx : 90
	6'd24 : mkx2 <= mk9 ; // idx : 94
	6'd25 : mkx2 <= mk4 ; // idx : 98
	6'd26 : mkx2 <= mk0 ; // idx : 102
	6'd27 : mkx2 <= mk12; // idx : 106
	6'd28 : mkx2 <= mk8 ; // idx : 110
	6'd29 : mkx2 <= mk3 ; // idx : 114
	6'd30 : mkx2 <= mk7 ; // idx : 118
	6'd31 : mkx2 <= mk11; // idx : 122
	6'd32 : mkx2 <= mk15; // idx : 126
	endcase	

// mkx3
always @(posedge clk)
	case(i_round)
	6'd1  : mkx3 <= mk3 ; // idx : 3
	6'd2  : mkx3 <= mk7 ; // idx : 7    
	6'd3  : mkx3 <= mk11; // idx : 11
	6'd4  : mkx3 <= mk15; // idx : 15
	6'd5  : mkx3 <= mk2 ; // idx : 19
	6'd6  : mkx3 <= mk6 ; // idx : 23
	6'd7  : mkx3 <= mk10; // idx : 27
	6'd8  : mkx3 <= mk14; // idx : 31
	6'd9  : mkx3 <= mk1 ; // idx : 35
	6'd10 : mkx3 <= mk5 ; // idx : 39
	6'd11 : mkx3 <= mk9 ; // idx : 43
	6'd12 : mkx3 <= mk13; // idx : 47
	6'd13 : mkx3 <= mk0 ; // idx : 51
	6'd14 : mkx3 <= mk4 ; // idx : 55
	6'd15 : mkx3 <= mk8 ; // idx : 59
	6'd16 : mkx3 <= mk12; // idx : 63
	6'd17 : mkx3 <= mk7 ; // idx : 67
	6'd18 : mkx3 <= mk3 ; // idx : 71
	6'd19 : mkx3 <= mk15; // idx : 75
	6'd20 : mkx3 <= mk11; // idx : 79
	6'd21 : mkx3 <= mk6 ; // idx : 83
	6'd22 : mkx3 <= mk2 ; // idx : 87
	6'd23 : mkx3 <= mk14; // idx : 91
	6'd24 : mkx3 <= mk10; // idx : 95
	6'd25 : mkx3 <= mk5 ; // idx : 99
	6'd26 : mkx3 <= mk1 ; // idx : 103
	6'd27 : mkx3 <= mk13; // idx : 107
	6'd28 : mkx3 <= mk9 ; // idx : 111
	6'd29 : mkx3 <= mk4 ; // idx : 115
	6'd30 : mkx3 <= mk0 ; // idx : 119
	6'd31 : mkx3 <= mk12; // idx : 123
	6'd32 : mkx3 <= mk8 ; // idx : 127
	endcase	

assign SKx0 = mkx0 + {1'b0,dx0};
assign SKx1 = mkx1 + {1'b0,dx1};
assign SKx2 = mkx2 + {1'b0,dx2};
assign SKx3 = mkx3 + {1'b0,dx3};

endmodule
