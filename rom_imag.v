module rom_imag (
    input clk,
    input rst,
    input en,
    input[31:0] address,
    output reg [15:0] out_data
);
parameter order = 60;
reg[15:0] data[order:0];
integer i;
initial 
begin

    data[0] = 16'b1111001111000111;
    data[1] = 16'b0001100001000100;
    data[2] = 16'b0000110011011000;
    data[3] = 16'b0000101010011111;
    data[4] = 16'b0011110111010110;
    data[5] = 16'b0100001010011001;
    data[6] = 16'b0110001011111000;
    data[7] = 16'b0100110000101000;
    data[8] = 16'b0111111111111111;
    data[9] = 16'b0111010111101000;
    data[10] = 16'b0111010001101111;
    data[11] = 16'b0110010011101111;
    data[12] = 16'b0101001010001111;
    data[13]= 16'b0001000100110011;
    data[14] = 16'b1110100101100101;
    data[15] = 16'b1010001000101010;
    data[16] = 16'b1000000000000000;
    data[17] = 16'b1000000000000000;
    data[18] = 16'b1010111001111110;
    data[19] = 16'b0000111001000100;
    data[20] = 16'b0110011010100111;
    data[21] = 16'b0111111111111111;
    data[22] = 16'b0100011110111111;
    data[23] = 16'b0000001010111001;
    data[24] = 16'b1010111010001000;
    data[25] = 16'b1000000000000000;
    data[26] = 16'b1010101111101001;
    data[27] = 16'b0001010010000111;
    data[28] = 16'b0110011100010101;
    data[29] = 16'b0111111111111111;
    data[30] = 16'b0001100001011111;
    data[31] = 16'b1000111110111111;
    data[32] = 16'b1000000000000000;
    data[33] = 16'b0001101110000001;
    data[34] = 16'b0111110101100000;
    data[35] = 16'b0100100010101011;
    data[36] = 16'b1011111111010001;
    data[37] = 16'b1001011111100010;
    data[38] = 16'b0000001001100101;
    data[39] = 16'b0111111111111111;
    data[40] = 16'b0001110010011000;
    data[41] = 16'b1001100001110110;
    data[42] = 16'b1100011011110100;
    data[43] = 16'b0101111000001100;
    data[44] = 16'b0100100101101100;
    data[45] = 16'b1000101100100000;
    data[46] = 16'b1011011010100100;
    data[47] = 16'b0111100010011001;
    data[48] = 16'b0111011001100100;
    data[49] = 16'b1010000001111011;
    data[50] = 16'b1101111110011011;
    data[51] = 16'b0111111111111111;
    data[52] = 16'b1111001110100111;
    data[53] = 16'b1001000010101100;
    data[54] = 16'b0101100000011011;
    data[55] = 16'b0101011100010101;
    data[56] = 16'b1000010011110011;
    data[57] = 16'b0001110111100101;
    data[58] = 16'b0101011100101001;
    data[59] = 16'b1001001000011001;
	 data[60] = 16'b0000000000000000;

	 
end


always@(posedge clk,negedge rst)
begin
    if(!rst)
    out_data<=0;
    else if(en)
    case (address)
        0:out_data<=data[0]; 
        1:out_data<=data[1]; 
        2:out_data<=data[2]; 
        3:out_data<=data[3]; 
        4:out_data<=data[4]; 
        5:out_data<=data[5]; 
        6:out_data<=data[6]; 
        7:out_data<=data[7]; 
        8:out_data<=data[8]; 
        9:out_data<=data[9]; 
		  10:out_data<=data[10]; 
        11:out_data<=data[11]; 
        12:out_data<=data[12]; 
        13:out_data<=data[13]; 
        14:out_data<=data[14]; 
        15:out_data<=data[15]; 
        16:out_data<=data[16]; 
        17:out_data<=data[17]; 
        18:out_data<=data[18]; 
        19:out_data<=data[19]; 
		  20:out_data<=data[20]; 
        21:out_data<=data[21]; 
        22:out_data<=data[22]; 
        23:out_data<=data[23]; 
        24:out_data<=data[24]; 
        25:out_data<=data[25]; 
        26:out_data<=data[26]; 
        27:out_data<=data[27]; 
        28:out_data<=data[28]; 
        29:out_data<=data[29]; 
		  30:out_data<=data[30]; 
        31:out_data<=data[31]; 
        32:out_data<=data[32]; 
        33:out_data<=data[33]; 
        34:out_data<=data[34]; 
        35:out_data<=data[35]; 
        36:out_data<=data[36]; 
        37:out_data<=data[37]; 
        38:out_data<=data[38]; 
        39:out_data<=data[39]; 
		  40:out_data<=data[40]; 
        41:out_data<=data[41]; 
        42:out_data<=data[42]; 
        43:out_data<=data[43]; 
        44:out_data<=data[44]; 
        45:out_data<=data[45]; 
        46:out_data<=data[46]; 
        47:out_data<=data[47]; 
        48:out_data<=data[48]; 
        49:out_data<=data[49]; 
		  50:out_data<=data[50]; 
        51:out_data<=data[51]; 
        52:out_data<=data[52]; 
        53:out_data<=data[53]; 
        54:out_data<=data[54]; 
        55:out_data<=data[55]; 
        56:out_data<=data[56]; 
        57:out_data<=data[57]; 
        58:out_data<=data[58]; 
        59:out_data<=data[59];
		  60:out_data<=data[60];
        default:out_data<=0; 
    endcase
    else 
    out_data<=out_data;

end



    
endmodule