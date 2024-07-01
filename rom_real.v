module rom_real (
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
    data[00] = 16'b0111000110001000;
    data[01] = 16'b0111100001011111;
    data[02] = 16'b0110111011001000;
    data[03] = 16'b0111111111111111;
    data[04] = 16'b0110000111001100;
    data[05] = 16'b0111111111111111;
    data[06] = 16'b0101101111111110;
    data[07] = 16'b0101101001101100;
    data[08] = 16'b0010100010110111;
    data[09] = 16'b1110111101100010;
    data[10] = 16'b1111110100101100;
    data[11] = 16'b1010001011010001;
    data[12] = 16'b1010001111010100;
    data[13] = 16'b1000000000000000;
    data[14] = 16'b1010111010000110;
    data[15] = 16'b1001011001001001;
    data[16] = 16'b1110011110000001;
    data[17] = 16'b0010011000110110;
    data[18] = 16'b0110100011010100;
    data[19] = 16'b0111111111111111;
    data[20] = 16'b0110011000000001;
    data[21] = 16'b0010010111001001;
    data[22] = 16'b1011000110000001;
    data[23] = 16'b1001110011010111;
    data[24] = 16'b1000000000000000;
    data[25] = 16'b1100101001111100;
    data[26] = 16'b0011101001110000;
    data[27] = 16'b0111000110101011;
    data[28] = 16'b0011110000000101;
    data[29] = 16'b1010110100111011;
    data[30] = 16'b1000110001011001;
    data[31] = 16'b1100011101110010;
    data[32] = 16'b0100000111010101;
    data[33] = 16'b0111100100101000;
    data[34] = 16'b0000100001001100;
    data[35] = 16'b1001111000101101;
    data[36] = 16'b1000100010011110;
    data[37] = 16'b0001000011110100;
    data[38] = 16'b0111111111111111;
    data[39] = 16'b1110100001011000;
    data[40] = 16'b1010001011110010;
    data[41] = 16'b1101111110010011;
    data[42] = 16'b0100011001010010;
    data[43] = 16'b0110010011110100;
    data[44] = 16'b1000011110110111;
    data[45] = 16'b1011101101111100;
    data[46] = 16'b0100111001001111;
    data[47] = 16'b0100010001001111;
    data[48] = 16'b1001100101110010;
    data[49] = 16'b1100010100010100;
    data[50] = 16'b0111110100101101;
    data[51] = 16'b0001100111111010;
    data[52] = 16'b1000110111100110;
    data[53] = 16'b0010100110111110;
    data[54] = 16'b0110100111111000;
    data[55] = 16'b1001111001010111;
    data[56] = 16'b1110101001000000;
    data[57] = 16'b0111111111111111;
    data[58] = 16'b1100010101110110;
    data[59] = 16'b1011101111000001;
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