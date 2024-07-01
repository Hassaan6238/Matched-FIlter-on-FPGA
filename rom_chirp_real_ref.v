module rom_chirp_real_ref (
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

    data[0] =16'b0111111111111111;
    data[1] =16'b0111111111111011;
    data[2] =16'b0111111110110000;
    data[3] =16'b0111111001101101;
    data[4] =16'b0111101100001011;
    data[5] =16'b0111010000000010;
    data[6] =16'b0110011110001110;
    data[7] =16'b0101001111111010;
    data[8] =16'b0011100000011101;
    data[9] =16'b0001010000000110;
    data[10] =16'b1110100111000110;
    data[11] =16'b1011111000010011;
    data[12] =16'b1001100001110010;
    data[13] =16'b1000001001011010;
    data[14] =16'b1000010011110101;
    data[15] =16'b1010010101111110;
    data[16] =16'b1110000100001001;
    data[17] =16'b0010100110101100;
    data[18] =16'b0110011110001110;
    data[19] =16'b0111111111111011;
    data[20] =16'b0110001000001110;
    data[21] =16'b0001010000000110;
    data[22] =16'b1011100001101100;
    data[23] =16'b1000001001011010;
    data[24] =16'b1001100001110010;
    data[25] =16'b1111010011011000;
    data[26] =16'b0101110000010011;
    data[27] =16'b0111111001101101;
    data[28] =16'b0011100000011101;
    data[29] =16'b1011111000010011;
    data[30] =16'b1000000000000000;
    data[31] =16'b1100000111110010;
    data[32] =16'b0100011110010100;
    data[33] =16'b0111111001101101;
    data[34] =16'b0001111011110111;
    data[35] =16'b1001011100100110;
    data[36] =16'b1001100001110010;
    data[37] =16'b0010100110101100;
    data[38] =16'b0111111110110000;
    data[39] =16'b0001010000000110;
    data[40] =16'b1000011110111000;
    data[41] =16'b1100000111110010;
    data[42] =16'b0110011110001110;
    data[43] =16'b0101001111111010;
    data[44] =16'b1010001111101101;
    data[45] =16'b1010010101111110;
    data[46] =16'b0101110000010011;
    data[47] =16'b0101001111111010;
    data[48] =16'b1001100001110010;
    data[49] =16'b1100000111110010;
    data[50] =16'b0111100001001000;
    data[51] =16'b0001010000000110;
    data[52] =16'b1000000001010000;
    data[53] =16'b0010100110101100;
    data[54] =16'b0110011110001110;
    data[55] =16'b1001011100100110;
    data[56] =16'b1110000100001001;
    data[57] =16'b0111111001101101;
    data[58] =16'b1011100001101100;
    data[59] =16'b1100000111110010;
	 data[60] =16'b0000000000000000;
	 
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
    out_data<=16'bz;

end



    
endmodule