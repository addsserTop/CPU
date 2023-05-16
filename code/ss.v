module SS
(
  input in, // 输入信号
  output reg out // 输出信号
);

reg [1:0] count = 0; // 计数器，初始值为0

always @(in) begin
  if (in) begin // 如果输入信号为1，计数器加1
    count <= count + 1;
  end
  if (count == 2'b100) begin // 当计数器累加到4时，输出一次并清零计数器
    out <= 1;
    count <= 0;
  end else begin
    out <= 0;
  end
end

endmodule
