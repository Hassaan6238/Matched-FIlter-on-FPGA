module tb_dsdpro;
wire [15:0] x, h;
wire [37:0] y, max; 
// wire [15:0] temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9;
reg [31:0] h_address, x_address;
wire start_signal, ss2, ss3;
wire [5:0] count;
parameter order = 60;
reg clk, rst;
always@(posedge clk or negedge rst)
begin
if(!rst)
h_address <= 0;
else if(h_address < order) 
h_address <= h_address + 1; 
else 
h_address <= order;
end

always@(posedge clk or negedge rst)
begin
if(!rst)
x_address <= 0;
else if(start_signal && x_address < order)
x_address <= x_address + 1;
else
x_address <= x_address;
end

  rom_sin inst(
        .clk(clk),
        .rst(rst),
        .en(1),
        .address(h_address),
        .out_data(h)
    );
  rom_sin inst2(
        .clk(clk),
        .rst(rst),
        .en(start_signal),
        .address(order-1-x_address),
        .out_data(x)
    );
  dsd_project dut(clk, rst, x, h, start_signal, ss2, ss3, y,  max,  count);
  //temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9
 
initial
$monitor("%b", y);
always 
begin
clk = ~clk; #100;
end

initial begin
clk = 0; rst = 0; #100;
         rst = 1;

end
endmodule
