module fixedmul(input [15:0] a, b, input clk, rst, en, output reg [31:0] out);
reg [31:0] temp;
always@(posedge clk or negedge rst)
begin
if(!rst)
begin
out <= 32'b0;
temp <= 32'b0;
end
else if (en)
begin
temp <= {{16{a[15]}},a} * {{16{b[15]}}, b};
out <= temp; 
end
end
endmodule


