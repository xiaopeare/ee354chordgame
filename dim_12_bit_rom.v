module /Users/xiaolei/Desktop/letters/dim_rom
	(
		input wire clk,
		input wire [4:0] row,
		input wire [5:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [4:0] row_reg;
	reg [5:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin
		if(({row_reg, col_reg}>=11'b00000000000) && ({row_reg, col_reg}<11'b00000001001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00000001001)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b00000001010) && ({row_reg, col_reg}<11'b00000011101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00000011101)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b00000011110) && ({row_reg, col_reg}<11'b00000100101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00000100101)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=11'b00000100110) && ({row_reg, col_reg}<11'b00001001011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}>=11'b00001001011) && ({row_reg, col_reg}<11'b00001001101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}>=11'b00001001101) && ({row_reg, col_reg}<11'b00001010111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00001010111)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b00001011000) && ({row_reg, col_reg}<11'b00001011100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00001011100)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b00001011101) && ({row_reg, col_reg}<11'b00001011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00001011111)) color_data = 12'b110010111001;
		if(({row_reg, col_reg}>=11'b00001100000) && ({row_reg, col_reg}<11'b00001100011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00001100011)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==11'b00001100100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00001100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b00001100110)) color_data = 12'b110110111001;
		if(({row_reg, col_reg}>=11'b00001100111) && ({row_reg, col_reg}<11'b00001101010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00001101010)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b00001101011) && ({row_reg, col_reg}<11'b00001101110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00001101110)) color_data = 12'b110110111010;

		if(({row_reg, col_reg}>=11'b00001101111) && ({row_reg, col_reg}<11'b00010001000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00010001000)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==11'b00010001001)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==11'b00010001010)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==11'b00010001011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b00010001100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}>=11'b00010001101) && ({row_reg, col_reg}<11'b00010001111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b00010001111)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b00010010000)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==11'b00010010001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==11'b00010010010)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==11'b00010010011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00010010100)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}>=11'b00010010101) && ({row_reg, col_reg}<11'b00010011001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}>=11'b00010011001) && ({row_reg, col_reg}<11'b00010011011)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=11'b00010011011) && ({row_reg, col_reg}<11'b00010100101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00010100101)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}>=11'b00010100110) && ({row_reg, col_reg}<11'b00010101100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00010101100)) color_data = 12'b110110111001;

		if(({row_reg, col_reg}>=11'b00010101101) && ({row_reg, col_reg}<11'b00011001000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00011001000)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==11'b00011001001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00011001010)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b00011001011)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b00011001100)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==11'b00011001101)) color_data = 12'b101110011001;
		if(({row_reg, col_reg}==11'b00011001110)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}==11'b00011001111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00011010000)) color_data = 12'b101110101001;
		if(({row_reg, col_reg}==11'b00011010001)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==11'b00011010010)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b00011010011)) color_data = 12'b011101100101;
		if(({row_reg, col_reg}>=11'b00011010100) && ({row_reg, col_reg}<11'b00011010111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00011010111)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b00011011000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}>=11'b00011011001) && ({row_reg, col_reg}<11'b00011011011)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==11'b00011011011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00011011100)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}>=11'b00011011101) && ({row_reg, col_reg}<11'b00011011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00011011111)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==11'b00011100000)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b00011100001) && ({row_reg, col_reg}<11'b00011100101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00011100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b00011100110)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==11'b00011100111)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=11'b00011101000) && ({row_reg, col_reg}<11'b00100001011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00100001011)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b00100001100)) color_data = 12'b100001100110;
		if(({row_reg, col_reg}==11'b00100001101)) color_data = 12'b110010101010;
		if(({row_reg, col_reg}>=11'b00100001110) && ({row_reg, col_reg}<11'b00100010010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00100010010)) color_data = 12'b101110101000;
		if(({row_reg, col_reg}==11'b00100010011)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b00100010100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==11'b00100010101)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==11'b00100010110)) color_data = 12'b110010101000;
		if(({row_reg, col_reg}>=11'b00100010111) && ({row_reg, col_reg}<11'b00100101000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00100101000)) color_data = 12'b110010101010;
		if(({row_reg, col_reg}==11'b00100101001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00100101010)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}>=11'b00100101011) && ({row_reg, col_reg}<11'b00100101110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00100101110)) color_data = 12'b110110111010;

		if(({row_reg, col_reg}>=11'b00100101111) && ({row_reg, col_reg}<11'b00101001001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00101001001)) color_data = 12'b110110101010;
		if(({row_reg, col_reg}==11'b00101001010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00101001011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b00101001100)) color_data = 12'b100001100110;
		if(({row_reg, col_reg}>=11'b00101001101) && ({row_reg, col_reg}<11'b00101001111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00101001111)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b00101010000) && ({row_reg, col_reg}<11'b00101010011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00101010011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==11'b00101010100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b00101010101)) color_data = 12'b101110101001;
		if(({row_reg, col_reg}==11'b00101010110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00101010111)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==11'b00101011000)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b00101011001)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==11'b00101011010)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==11'b00101011011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00101011100)) color_data = 12'b110010011001;
		if(({row_reg, col_reg}==11'b00101011101)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}>=11'b00101011110) && ({row_reg, col_reg}<11'b00101100000)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b00101100000)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==11'b00101100001)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b00101100010)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==11'b00101100011)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b00101100100)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==11'b00101100101)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}==11'b00101100110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00101100111)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b00101101000)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==11'b00101101001)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b00101101010)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==11'b00101101011)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=11'b00101101100) && ({row_reg, col_reg}<11'b00110001011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00110001011)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b00110001100)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}>=11'b00110001101) && ({row_reg, col_reg}<11'b00110010001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00110010001)) color_data = 12'b110110111001;
		if(({row_reg, col_reg}==11'b00110010010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00110010011)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b00110010100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b00110010101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}>=11'b00110010110) && ({row_reg, col_reg}<11'b00110011000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00110011000)) color_data = 12'b101110101001;
		if(({row_reg, col_reg}==11'b00110011001)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==11'b00110011010)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b00110011011)) color_data = 12'b101110011001;
		if(({row_reg, col_reg}==11'b00110011100)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}>=11'b00110011101) && ({row_reg, col_reg}<11'b00110011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00110011111)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}==11'b00110100000)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b00110100001)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==11'b00110100010)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==11'b00110100011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00110100100)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b00110100101)) color_data = 12'b011001000100;
		if(({row_reg, col_reg}>=11'b00110100110) && ({row_reg, col_reg}<11'b00110101000)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b00110101000)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b00110101001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00110101010)) color_data = 12'b101110101001;
		if(({row_reg, col_reg}==11'b00110101011)) color_data = 12'b011101100100;
		if(({row_reg, col_reg}==11'b00110101100)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==11'b00110101101)) color_data = 12'b101110011000;

		if(({row_reg, col_reg}>=11'b00110101110) && ({row_reg, col_reg}<11'b00111001011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00111001011)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b00111001100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=11'b00111001101) && ({row_reg, col_reg}<11'b00111010000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00111010000)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b00111010001) && ({row_reg, col_reg}<11'b00111010100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00111010100)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==11'b00111010101)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==11'b00111010110)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==11'b00111010111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00111011000)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}==11'b00111011001)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==11'b00111011010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b00111011011)) color_data = 12'b110010101010;
		if(({row_reg, col_reg}>=11'b00111011100) && ({row_reg, col_reg}<11'b00111011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00111011111)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==11'b00111100000)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==11'b00111100001)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}>=11'b00111100010) && ({row_reg, col_reg}<11'b00111100100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00111100100)) color_data = 12'b110010101010;
		if(({row_reg, col_reg}==11'b00111100101)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b00111100110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b00111100111)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}>=11'b00111101000) && ({row_reg, col_reg}<11'b00111101011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b00111101011)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b00111101100)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==11'b00111101101)) color_data = 12'b101010011000;

		if(({row_reg, col_reg}>=11'b00111101110) && ({row_reg, col_reg}<11'b01000001000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000001000)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b01000001001) && ({row_reg, col_reg}<11'b01000001011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000001011)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==11'b01000001100)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}>=11'b01000001101) && ({row_reg, col_reg}<11'b01000010100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000010100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01000010101)) color_data = 12'b011101100100;
		if(({row_reg, col_reg}==11'b01000010110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000010111)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b01000011000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000011001)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b01000011010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=11'b01000011011) && ({row_reg, col_reg}<11'b01000011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000011111)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==11'b01000100000)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}>=11'b01000100001) && ({row_reg, col_reg}<11'b01000100100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000100100)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b01000100101)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==11'b01000100110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01000100111)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}>=11'b01000101000) && ({row_reg, col_reg}<11'b01000101100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000101100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01000101101)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}>=11'b01000101110) && ({row_reg, col_reg}<11'b01000110000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000110000)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b01000110001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01000110010)) color_data = 12'b110110111001;

		if(({row_reg, col_reg}>=11'b01000110011) && ({row_reg, col_reg}<11'b01001001010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001001010)) color_data = 12'b110010111001;
		if(({row_reg, col_reg}==11'b01001001011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b01001001100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=11'b01001001101) && ({row_reg, col_reg}<11'b01001010010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001010010)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b01001010011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001010100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b01001010101)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}==11'b01001010110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001010111)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b01001011000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001011001)) color_data = 12'b100101110111;
		if(({row_reg, col_reg}==11'b01001011010)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01001011011)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}>=11'b01001011100) && ({row_reg, col_reg}<11'b01001011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001011111)) color_data = 12'b100101110111;
		if(({row_reg, col_reg}==11'b01001100000)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}>=11'b01001100001) && ({row_reg, col_reg}<11'b01001100100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001100100)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b01001100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01001100110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01001100111)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}>=11'b01001101000) && ({row_reg, col_reg}<11'b01001101010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001101010)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b01001101011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001101100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01001101101)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==11'b01001101110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01001101111)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=11'b01001110000) && ({row_reg, col_reg}<11'b01010001000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01010001000)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b01010001001) && ({row_reg, col_reg}<11'b01010001011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01010001011)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==11'b01010001100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=11'b01010001101) && ({row_reg, col_reg}<11'b01010010011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01010010011)) color_data = 12'b101110011001;
		if(({row_reg, col_reg}==11'b01010010100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b01010010101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==11'b01010010110)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}>=11'b01010010111) && ({row_reg, col_reg}<11'b01010011001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01010011001)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==11'b01010011010)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}>=11'b01010011011) && ({row_reg, col_reg}<11'b01010011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01010011111)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==11'b01010100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b01010100001)) color_data = 12'b110110101010;
		if(({row_reg, col_reg}>=11'b01010100010) && ({row_reg, col_reg}<11'b01010100100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01010100100)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b01010100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01010100110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b01010100111)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01010101000)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}>=11'b01010101001) && ({row_reg, col_reg}<11'b01010101100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01010101100)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==11'b01010101101)) color_data = 12'b100110000111;

		if(({row_reg, col_reg}>=11'b01010101110) && ({row_reg, col_reg}<11'b01011001011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01011001011)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01011001100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==11'b01011001101)) color_data = 12'b110010111001;
		if(({row_reg, col_reg}>=11'b01011001110) && ({row_reg, col_reg}<11'b01011010011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01011010011)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}==11'b01011010100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01011010101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01011010110)) color_data = 12'b101110011001;
		if(({row_reg, col_reg}==11'b01011010111)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==11'b01011011000)) color_data = 12'b110110111001;
		if(({row_reg, col_reg}==11'b01011011001)) color_data = 12'b100101110111;
		if(({row_reg, col_reg}==11'b01011011010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b01011011011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01011011100)) color_data = 12'b110010111001;
		if(({row_reg, col_reg}>=11'b01011011101) && ({row_reg, col_reg}<11'b01011011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01011011111)) color_data = 12'b100101110111;
		if(({row_reg, col_reg}==11'b01011100000)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01011100001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01011100010)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=11'b01011100011) && ({row_reg, col_reg}<11'b01011100101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01011100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01011100110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01011100111)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}>=11'b01011101000) && ({row_reg, col_reg}<11'b01011101100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01011101100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01011101101)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}>=11'b01011101110) && ({row_reg, col_reg}<11'b01011110010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01011110010)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==11'b01011110011)) color_data = 12'b110110111001;

		if(({row_reg, col_reg}>=11'b01011110100) && ({row_reg, col_reg}<11'b01100001001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01100001001)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==11'b01100001010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01100001011)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01100001100)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}>=11'b01100001101) && ({row_reg, col_reg}<11'b01100010010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01100010010)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01100010011)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01100010100)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}>=11'b01100010101) && ({row_reg, col_reg}<11'b01100011001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01100011001)) color_data = 12'b100101110111;
		if(({row_reg, col_reg}==11'b01100011010)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b01100011011)) color_data = 12'b101110101001;
		if(({row_reg, col_reg}>=11'b01100011100) && ({row_reg, col_reg}<11'b01100011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01100011111)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b01100100000)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}>=11'b01100100001) && ({row_reg, col_reg}<11'b01100100101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01100100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01100100110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01100100111)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}>=11'b01100101000) && ({row_reg, col_reg}<11'b01100101100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01100101100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01100101101)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}>=11'b01100101110) && ({row_reg, col_reg}<11'b01100110001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01100110001)) color_data = 12'b110110111001;

		if(({row_reg, col_reg}>=11'b01100110010) && ({row_reg, col_reg}<11'b01101001000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01101001000)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==11'b01101001001)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01101001010)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b01101001011)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==11'b01101001100)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}==11'b01101001101)) color_data = 12'b101110011001;
		if(({row_reg, col_reg}==11'b01101001110)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}>=11'b01101001111) && ({row_reg, col_reg}<11'b01101010001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01101010001)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==11'b01101010010)) color_data = 12'b010101000010;
		if(({row_reg, col_reg}==11'b01101010011)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}>=11'b01101010100) && ({row_reg, col_reg}<11'b01101011001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01101011001)) color_data = 12'b011101100101;
		if(({row_reg, col_reg}==11'b01101011010)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==11'b01101011011)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}>=11'b01101011100) && ({row_reg, col_reg}<11'b01101011111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01101011111)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==11'b01101100000)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=11'b01101100001) && ({row_reg, col_reg}<11'b01101100011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01101100011)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}==11'b01101100100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01101100101)) color_data = 12'b101010010111;
		if(({row_reg, col_reg}==11'b01101100110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01101100111)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}==11'b01101101000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01101101001)) color_data = 12'b110010111001;
		if(({row_reg, col_reg}==11'b01101101010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01101101011)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01101101100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01101101101)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}>=11'b01101101110) && ({row_reg, col_reg}<11'b01101110001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01101110001)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01101110010)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==11'b01101110011)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=11'b01101110100) && ({row_reg, col_reg}<11'b01110001000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01110001000)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b01110001001)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b01110001010)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}>=11'b01110001011) && ({row_reg, col_reg}<11'b01110001101)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}>=11'b01110001101) && ({row_reg, col_reg}<11'b01110010000)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b01110010000)) color_data = 12'b011101000100;
		if(({row_reg, col_reg}==11'b01110010001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==11'b01110010010)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}>=11'b01110010011) && ({row_reg, col_reg}<11'b01110010111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01110010111)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b01110011000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b01110011001)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b01110011010)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==11'b01110011011)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01110011100)) color_data = 12'b011001010011;
		if(({row_reg, col_reg}==11'b01110011101)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==11'b01110011110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01110011111)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b01110100000)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==11'b01110100001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==11'b01110100010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==11'b01110100011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01110100100)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==11'b01110100101)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b01110100110)) color_data = 12'b010101000010;
		if(({row_reg, col_reg}==11'b01110100111)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b01110101000)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==11'b01110101001)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==11'b01110101010)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==11'b01110101011)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}>=11'b01110101100) && ({row_reg, col_reg}<11'b01110101110)) color_data = 12'b010100110011;
		if(({row_reg, col_reg}==11'b01110101110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==11'b01110101111)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==11'b01110110000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01110110001)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==11'b01110110010)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==11'b01110110011)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}>=11'b01110110100) && ({row_reg, col_reg}<11'b01110110111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01110110111)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=11'b01110111000) && ({row_reg, col_reg}<11'b01111001010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01111001010)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}>=11'b01111001011) && ({row_reg, col_reg}<11'b01111001101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01111001101)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}>=11'b01111001110) && ({row_reg, col_reg}<11'b01111010010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01111010010)) color_data = 12'b110010111001;
		if(({row_reg, col_reg}>=11'b01111010011) && ({row_reg, col_reg}<11'b01111011010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01111011010)) color_data = 12'b101110101001;
		if(({row_reg, col_reg}==11'b01111011011)) color_data = 12'b110010101010;
		if(({row_reg, col_reg}>=11'b01111011100) && ({row_reg, col_reg}<11'b01111100110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01111100110)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}>=11'b01111100111) && ({row_reg, col_reg}<11'b01111101001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01111101001)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}>=11'b01111101010) && ({row_reg, col_reg}<11'b01111101101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01111101101)) color_data = 12'b110010101010;
		if(({row_reg, col_reg}>=11'b01111101110) && ({row_reg, col_reg}<11'b01111110001)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==11'b01111110001)) color_data = 12'b110010111001;





		if(({row_reg, col_reg}>=11'b01111110010) && ({row_reg, col_reg}<=11'b10011111011)) color_data = 12'b110010101001;
	end
endmodule