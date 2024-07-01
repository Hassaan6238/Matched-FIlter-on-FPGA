module dsd_project(
input clk, rst,
input [15:0] x, h,
output reg start_signal, ss2, ss3, detected,
output reg[37:0] y, max
//output [15:0] temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9,
);

parameter order = 60;
parameter threshold = 38'b00001111000000000000000000000000000000;
reg [15:0] x_data [0:order - 1];
reg [15:0] h_data [0:order - 1];
wire [31:0] xh [0:order - 1];
reg [37:0] prod [0:order - 1];
reg [37:0] sum ;
reg [31:0]rf1;
reg [31:0]ref;
wire [37:0]max_temp;
reg [5:0] count;


//reg [37:0] max_temp;
integer i, k, l, m, n, o, p, q, r, s;

always@(posedge clk or negedge rst)
begin
if(!rst)
begin
for(i = 0; i < order; i = i + 1)
begin
h_data[i] <= 32'b0;
ref <= 0;
rf1 <= 0;
start_signal <= 0;
end
end
else if(ref < order) begin
h_data[ref] <= h;
rf1 <= rf1 + 1;
ref <= rf1;
start_signal <= 0;
end
else 
begin
ref <= ref;
rf1 <= 0;
start_signal <= 1;
end
end

always@(posedge clk or negedge rst)
begin
if(!rst)
begin
for(k = 0; k < order; k = k + 1)
begin
x_data[k] <= 0;
end
end
else if(start_signal)
begin
x_data[0] <= x;
for(l = 1; l < order; l = l + 1)
begin
x_data[l] <= x_data[l-1];
end
end
end

always@(posedge clk or negedge rst)
begin
if(!rst)
begin
ss2 <= 0;
ss3 <= 0; 
end
else if (start_signal)
begin
ss2 <= start_signal;
ss3 <= ss2; 
end
end

genvar j;
generate
for (j = 0; j < order; j = j + 1) begin : gen_loop
fixedmul fxm(.a(x_data[j]), .b(h_data[j]), .clk(clk), .rst(rst), .en(ss2), .out(xh[j]));
end
endgenerate

always@(posedge clk or negedge rst)
begin
if(!rst)
count <= 0;
else if (ss2)
count <= count + 1;
end

always@(posedge clk or negedge rst)
begin
if(!rst)
begin
for(r = 0; r< order; r = r + 1)
begin
prod[r] <= 0;
end
end
else
for(q = 0; q < order; q = q + 1)
begin
prod[q] <= (count > 2+q+order)?0:{{6{xh[q][31]}}, xh[q]};
end
end

always@(*)
begin
if(!rst)
sum = 0;
else 
sum = 0;
for(s = 0; s < order; s = s + 1) begin
sum = sum + prod[s];
end
end

always@(posedge clk or negedge rst)
begin
if(!rst)
y <= 0;
else if(ss2)
begin
y <= sum;
end
end

always@(posedge clk or negedge rst)
begin
if(!rst)
begin
max <= 0;
end
else if(ss2)
begin
if(max_temp[37])
max <= y;
else
max <= max;
end
end

assign max_temp = max - y;
always@(posedge clk or negedge rst)
begin
if(!rst)
detected <= 0;
else if(max >= threshold)
detected <= 1;
end

endmodule

