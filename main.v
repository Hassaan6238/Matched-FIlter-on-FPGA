module main (
    input clk,
    input rst,
	 input  [2:0] signal,
	 output [15:0] ref_real,
    output [15:0] ref_imag,
    output [15:0] incoming_real,
    output [15:0] incoming_imag,
	 output [37:0] y_r,
	 output [37:0] y_i,
	 output [37:0] max_r,
	 output [37:0] max_i,
	 output detected_r, detected_i
	 
);
parameter order = 60;

//wire[15:0] IFF_real; 
//wire[15:0] IFF_imag; 
//wire[37:0] y_r;
//wire[37:0] y_i;

reg[31:0] h_address;
reg[31:0] x_address;
wire start_signal;
wire ss2;
wire ss3;
wire start_signal_2;
wire ss2_2;
wire ss3_2;

wire[5:0] count;

always@(posedge clk or negedge rst)
begin
if(!rst)
h_address <= 0;
else if(h_address < order) 
h_address <= h_address + 1; 
else 
h_address <= 60;
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


dsd_project dut_real(
    .clk(clk),
    .rst(rst),
    .x(incoming_real),
    .h(ref_real),
    .start_signal(start_signal),
    .ss2(ss2),
    .ss3(ss3),
	 .detected(detected_r),
    .y(y_r),
    .max(max_r)
    
);


dsd_project dut_imag(
    .clk(clk),
    .rst(rst),
    .x(incoming_imag),
    .h(ref_imag),
    .start_signal(start_signal_2),
    .ss2(ss2_2),
    .ss3(ss3_2),
	 .detected(detected_i),
    .y(y_i),
    .max(max_i)
    
);

 rom_real inst(
        .clk(clk),
        .rst(rst),
        .en(start_signal),
        .address(order-1-x_address),
        .out_data(incoming_real)
    );

 rom_imag inst2(
        .clk(clk),
        .rst(rst),
        .en(start_signal),
        .address(order-1-x_address),
        .out_data(incoming_imag)
    );

///////////////////////////////////////////////////////


  rom_sin inst3(
        .clk(clk),
        .rst(rst),
        .en(signal[0]),
        .address(h_address),
        .out_data(ref_real)
    );

  rom_chirp_real_ref inst4(
        .clk(clk),
        .rst(rst),
        .en(signal[1]),
        .address(h_address),
        .out_data(ref_real)
    );

  rom_chirp_imag_ref inst5(
        .clk(clk),
        .rst(rst),
        .en(signal[1]),
        .address(h_address),
        .out_data(ref_imag)
    );
	 
  rom_tri_real_ref inst6(
        .clk(clk),
        .rst(rst),
        .en(signal[2]),
        .address(h_address),
        .out_data(ref_real)
    );

  /*rom_tri_imag_ref inst7(
        .clk(clk),
        .rst(rst),
        .en(signal[2]),
        .address(h_address),
        .out_data(ref_imag)
    );*/ 
    
endmodule 
