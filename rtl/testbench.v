
module testbench();
reg clk, reset,ed;
reg[63:0] P ;
reg [127:0] MK ;
reg  [63:0] expectedC ;
reg [6:0] counter ;
wire [63:0]C ;
reg [7:0] vectornum, errors; // bookkeeping variables
reg [191:0] testvectors[150:0]; // array of testvectors


// instantiate device under test
hight dut(P, MK, clk, reset,ed, C);  // instantiate dut



// generate clock
always // no sensitivity list, so it always executes
begin
clk = 1; #30; clk = 0; #30;
end




// at start of test, load vectors and pulse reset
initial
begin

$readmemh("Test_Vector_enc241.tv", testvectors);
P = 64'h0000000000000000;
ed = 1;
vectornum = 0; errors = 0;
#1; {MK , expectedC} = testvectors[vectornum];
reset = 1; #70; reset = 0;

end
// Note: $readmemh reads testvector files written in
// hexadecimal



// apply test vectors on rising edge of clk
always @(posedge clk)
begin
if (~reset) counter = counter + 1 ;
else counter = 0;
if (counter == 7'h23) 
	begin
	#10; if (C !== expectedC) begin
	$display("Error: inputs = %b", {MK});
	$display(" outputs = %b (%b expected)",C,expectedC);
	errors = errors + 1;
	end
vectornum = vectornum + 1;
#10;reset = 1;
#10; {MK , expectedC} = testvectors[vectornum];
#60; reset = 0;

/////////
if (vectornum == 8'b1111_0001 ) begin
$display("%d tests completed with %d errors",
vectornum, errors);
$stop;
end
///////////
end

end


endmodule
// === and !== can compare values that are 1, 0, x, or z.


