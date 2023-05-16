module t328(
  input CLK_0, // 小时钟
  input [31:0] data_in, // 32 位输入数据
  output reg [7:0] data_out // 8 位输出数据
);

reg [3:0] cnt; // 计数器，从0到3计数

always @(posedge CLK_0) begin
  cnt <= cnt + 1; // 每个小时钟上升沿计数器加1
  if (cnt == 0) begin
    data_out <= data_in[7:0]; // 计数器为0时输出最低的8位
  end else if (cnt == 1) begin
    data_out <= data_in[15:8]; // 计数器为1时输出15-7位
  end else if (cnt == 2) begin
    data_out <= data_in[23:16]; // 计数器为2时输出23-16位
  end else if (cnt == 3) begin
    data_out <= data_in[31:24]; // 计数器为3时输出31-24位
    cnt <= 0; // 输出后计数器复位
  end
end

endmodule