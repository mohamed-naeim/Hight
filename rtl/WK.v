
// Whitening key generation
module WK (input wire [127:0] MK, input clk,reset,ed,
           output reg[7:0] WK0_4,WK1_5,WK2_6,WK3_7);

reg [5:0] i_round = 6'd00;


always @ (posedge clk)
begin

if (i_round ==6'b000000) begin
 WK0_4 <= (~ed)?  MK[7:0] : MK[103:96];
 WK1_5 <= (~ed)?  MK[15:8]: MK[111:104];
 WK2_6 <= (~ed)?  MK[23:16] : MK[119:112];
 WK3_7 <= (~ed)?  MK[31:24] : MK[127:120];
 end
 else begin 
 WK0_4 <= (ed)?  MK[7:0] : MK[103:96];
 WK1_5 <= (ed)?  MK[15:8]: MK[111:104];
 WK2_6 <= (ed)?  MK[23:16] : MK[119:112];
 WK3_7 <= (ed)?  MK[31:24] : MK[127:120];
 end
end

always @(posedge clk)
begin
	if (reset == 1'b1) begin
		i_round <= 6'd00;
	end
	else if (i_round <35) begin
		i_round <= i_round + 6'd01;
	end
end

endmodule