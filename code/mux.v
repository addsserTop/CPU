module MUX(
	 input [31:0] IN_1,
	 input [31:0] IN_2,
	 input S,
	 output reg [31:0] OUT
 );

always @(*)begin
	if(S)begin
		OUT<=IN_2;
	end else begin
		OUT<=IN_1;
	end
end 
endmodule