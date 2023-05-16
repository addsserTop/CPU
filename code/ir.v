module IR(
	input CLK,
	input [6:0] OP,
	output reg J0,
	output reg J1,
	output reg B,
	output reg U0,
	output reg U1,
	output reg RW,
	output reg MW,
	output reg MT,
	output reg RS,
	output reg [2:0]EXTOP//3位
);

//OP输入触发
always @(posedge CLK) begin
	case(OP)
		7'b0000011:begin
				B<=0;
				J0<=0;
				J1<=0;
				U0<=0;
				U1<=0;
            RW<=1;
				MW<=0;
            MT<=1;
            RS<=1;
            EXTOP<=3'b000;
            end
		7'b0100011:begin
            B<=0;
				J0<=0;
				J1<=0;
				U0<=0;
				U1<=0;
            RW<=0;
				MW<=1;
            MT<=0;
            RS<=1;
            EXTOP<=3'b010;
            end
		7'b0110011:begin
            B<=0;
				J0<=0;
				J1<=0;
				U0<=0;
				U1<=0;
            RW<=1;
				MW<=0;
            MT<=0;
            RS<=0;
            EXTOP<=3'b000;
            end
		7'b0010011:begin
            B<=0;
				J0<=0;
				J1<=0;
				U0<=0;
				U1<=0;
            RW<=1;
				MW<=0;
            MT<=0;
            RS<=1;
            EXTOP<=3'b000;
            end
		7'b1100011:begin
            B<=1;
				J0<=0;
				J1<=0;
				U0<=0;
				U1<=0;
            RW<=0;
				MW<=0;
            MT<=0;
            RS<=0;
            EXTOP<=3'b011;
            end
		7'b1101111:begin
            B<=0;
				J0<=1;
				J1<=0;
				U0<=0;
				U1<=0;
            RW<=1;
				MW<=0;
            MT<=0;
            RS<=0;
            EXTOP<=3'b100;
            end
		7'b0110111:begin
            B<=0;
				J0<=0;
				J1<=0;
				U0<=1;
				U1<=0;
            RW<=1;
				MW<=0;
            MT<=0;
            RS<=0;
            EXTOP<=3'b001;
            end
		7'b0010111:begin
            B<=0;
				J0<=0;
				J1<=0;
				U0<=0;
				U1<=1;
            RW<=1;
				MW<=0;
            MT<=0;
            RS<=0;
            EXTOP<=3'b001;
            end
	endcase
end
endmodule