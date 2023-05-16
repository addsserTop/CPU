module PC(
    input CLK,
    input [31:0]X1,
    input [31:0]IN,
    input J0,
    input J1,
    input B,
    input EQUAL,
    input [11:0]PC_I,
    output reg [11:0]PC_O = 12'b000000000000
);

    `define CONSTANT_PC 12'b000000000001

    always @(posedge CLK) begin
        if (B || J0 || J1) begin
            if (B) begin
                if (EQUAL) begin
                    PC_O <= PC_I + {20'd0, IN[11:0]};
                end else begin
                    PC_O <= PC_I + `CONSTANT_PC;  
                end
            end else begin
                if (J1) begin
                    PC_O <= X1[11:0] + IN[11:0];
                end else begin
                    PC_O <= PC_I + IN[11:0];
                end
            end
        end else begin
            PC_O <= PC_I + `CONSTANT_PC;
        end
    end

endmodule

