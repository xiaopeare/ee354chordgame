module /Users/xiaolei/Desktop/letters/d_rom
	(
		input wire clk,
		input wire [4:0] row,
		input wire [4:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [4:0] row_reg;
	reg [4:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin
		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0000000111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0000000111)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==10'b0000001000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0000001001)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=10'b0000001010) && ({row_reg, col_reg}<10'b0000100010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0000100010)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==10'b0000100011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0000100100)) color_data = 12'b110010011000;
		if(({row_reg, col_reg}==10'b0000100101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0000100110)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=10'b0000100111) && ({row_reg, col_reg}<10'b0000101010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}>=10'b0000101010) && ({row_reg, col_reg}<10'b0000101100)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=10'b0000101100) && ({row_reg, col_reg}<10'b0001000100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0001000100)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}==10'b0001000101)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=10'b0001000110) && ({row_reg, col_reg}<10'b0001001100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0001001100)) color_data = 12'b110010101000;
		if(({row_reg, col_reg}==10'b0001001101)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=10'b0001001110) && ({row_reg, col_reg}<10'b0001100111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}>=10'b0001100111) && ({row_reg, col_reg}<10'b0001101001)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}>=10'b0001101001) && ({row_reg, col_reg}<10'b0001101110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0001101110)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=10'b0001101111) && ({row_reg, col_reg}<10'b0010000011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0010000011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==10'b0010000100)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0010000101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==10'b0010000110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0010000111)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}==10'b0010001000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==10'b0010001001)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0010001010)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0010001011)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0010001100)) color_data = 12'b100001100110;
		if(({row_reg, col_reg}==10'b0010001101)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==10'b0010001110)) color_data = 12'b110010101010;

		if(({row_reg, col_reg}>=10'b0010001111) && ({row_reg, col_reg}<10'b0010100011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0010100011)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==10'b0010100100)) color_data = 12'b011101100101;
		if(({row_reg, col_reg}==10'b0010100101)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}>=10'b0010100110) && ({row_reg, col_reg}<10'b0010101000)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0010101000)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==10'b0010101001)) color_data = 12'b011101100101;
		if(({row_reg, col_reg}==10'b0010101010)) color_data = 12'b011101010101;
		if(({row_reg, col_reg}==10'b0010101011)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0010101100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0010101101)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==10'b0010101110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==10'b0010101111)) color_data = 12'b110010101010;

		if(({row_reg, col_reg}>=10'b0010110000) && ({row_reg, col_reg}<10'b0011000101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0011000101)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==10'b0011000110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0011000111)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0011001000)) color_data = 12'b110010111001;
		if(({row_reg, col_reg}>=10'b0011001001) && ({row_reg, col_reg}<10'b0011001011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0011001011)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}==10'b0011001100)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==10'b0011001101)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0011001110)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==10'b0011001111)) color_data = 12'b100101110110;

		if(({row_reg, col_reg}>=10'b0011010000) && ({row_reg, col_reg}<10'b0011100101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0011100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==10'b0011100110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0011100111)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}==10'b0011101000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0011101001)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=10'b0011101010) && ({row_reg, col_reg}<10'b0011101101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0011101101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}>=10'b0011101110) && ({row_reg, col_reg}<10'b0011110000)) color_data = 12'b010000110010;

		if(({row_reg, col_reg}>=10'b0011110000) && ({row_reg, col_reg}<10'b0100000101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0100000101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==10'b0100000110)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==10'b0100000111)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}>=10'b0100001000) && ({row_reg, col_reg}<10'b0100001101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0100001101)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}==10'b0100001110)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==10'b0100001111)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0100010000)) color_data = 12'b100110000111;
		if(({row_reg, col_reg}>=10'b0100010001) && ({row_reg, col_reg}<10'b0100010011)) color_data = 12'b110010101001;

		if(({row_reg, col_reg}==10'b0100010011)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=10'b0100100000) && ({row_reg, col_reg}<10'b0100100011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0100100011)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==10'b0100100100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0100100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==10'b0100100110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0100100111)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}>=10'b0100101000) && ({row_reg, col_reg}<10'b0100101011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0100101011)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}>=10'b0100101100) && ({row_reg, col_reg}<10'b0100101110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0100101110)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}==10'b0100101111)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0100110000)) color_data = 12'b100001110110;

		if(({row_reg, col_reg}>=10'b0100110001) && ({row_reg, col_reg}<10'b0101000101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0101000101)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==10'b0101000110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0101000111)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}>=10'b0101001000) && ({row_reg, col_reg}<10'b0101001110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0101001110)) color_data = 12'b101010010111;
		if(({row_reg, col_reg}==10'b0101001111)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0101010000)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=10'b0101010001) && ({row_reg, col_reg}<10'b0101100101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0101100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==10'b0101100110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0101100111)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}>=10'b0101101000) && ({row_reg, col_reg}<10'b0101101011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0101101011)) color_data = 12'b110110101001;
		if(({row_reg, col_reg}==10'b0101101100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0101101101)) color_data = 12'b101110101001;
		if(({row_reg, col_reg}==10'b0101101110)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==10'b0101101111)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0101110000)) color_data = 12'b100001100101;

		if(({row_reg, col_reg}>=10'b0101110001) && ({row_reg, col_reg}<10'b0110000101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0110000101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==10'b0110000110)) color_data = 12'b001100100001;
		if(({row_reg, col_reg}==10'b0110000111)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}>=10'b0110001000) && ({row_reg, col_reg}<10'b0110001100)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0110001100)) color_data = 12'b110110111001;
		if(({row_reg, col_reg}==10'b0110001101)) color_data = 12'b110010111001;
		if(({row_reg, col_reg}==10'b0110001110)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==10'b0110001111)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0110010000)) color_data = 12'b101010000111;

		if(({row_reg, col_reg}>=10'b0110010001) && ({row_reg, col_reg}<10'b0110100101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0110100101)) color_data = 12'b101110011000;
		if(({row_reg, col_reg}==10'b0110100110)) color_data = 12'b010000100010;
		if(({row_reg, col_reg}==10'b0110100111)) color_data = 12'b010101000011;
		if(({row_reg, col_reg}>=10'b0110101000) && ({row_reg, col_reg}<10'b0110101101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0110101101)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==10'b0110101110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0110101111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==10'b0110110000)) color_data = 12'b101110011000;

		if(({row_reg, col_reg}>=10'b0110110001) && ({row_reg, col_reg}<10'b0111000101)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0111000101)) color_data = 12'b101010001000;
		if(({row_reg, col_reg}>=10'b0111000110) && ({row_reg, col_reg}<10'b0111001000)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}>=10'b0111001000) && ({row_reg, col_reg}<10'b0111001011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0111001011)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}==10'b0111001100)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==10'b0111001101)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}==10'b0111001110)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b0111001111)) color_data = 12'b100001110110;

		if(({row_reg, col_reg}>=10'b0111010000) && ({row_reg, col_reg}<10'b0111100011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b0111100011)) color_data = 12'b101010000111;
		if(({row_reg, col_reg}==10'b0111100100)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==10'b0111100101)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}>=10'b0111100110) && ({row_reg, col_reg}<10'b0111101000)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0111101000)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}==10'b0111101001)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==10'b0111101010)) color_data = 12'b011101010100;
		if(({row_reg, col_reg}==10'b0111101011)) color_data = 12'b011001000011;
		if(({row_reg, col_reg}==10'b0111101100)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b0111101101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==10'b0111101110)) color_data = 12'b100001100101;
		if(({row_reg, col_reg}==10'b0111101111)) color_data = 12'b101110101001;

		if(({row_reg, col_reg}>=10'b0111110000) && ({row_reg, col_reg}<10'b1000000011)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b1000000011)) color_data = 12'b100101110110;
		if(({row_reg, col_reg}==10'b1000000100)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b1000000101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==10'b1000000110)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b1000000111)) color_data = 12'b010000110001;
		if(({row_reg, col_reg}>=10'b1000001000) && ({row_reg, col_reg}<10'b1000001010)) color_data = 12'b010000110010;
		if(({row_reg, col_reg}==10'b1000001010)) color_data = 12'b010100110010;
		if(({row_reg, col_reg}==10'b1000001011)) color_data = 12'b011001010100;
		if(({row_reg, col_reg}==10'b1000001100)) color_data = 12'b100001110110;
		if(({row_reg, col_reg}==10'b1000001101)) color_data = 12'b101010011000;
		if(({row_reg, col_reg}==10'b1000001110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b1000001111)) color_data = 12'b110010111010;

		if(({row_reg, col_reg}>=10'b1000010000) && ({row_reg, col_reg}<10'b1000100010)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b1000100010)) color_data = 12'b110110111010;
		if(({row_reg, col_reg}>=10'b1000100011) && ({row_reg, col_reg}<10'b1000100110)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b1000100110)) color_data = 12'b110010111010;
		if(({row_reg, col_reg}==10'b1000100111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b1000101000)) color_data = 12'b110010111010;

		if(({row_reg, col_reg}>=10'b1000101001) && ({row_reg, col_reg}<10'b1001000000)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b1001000000)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=10'b1001000001) && ({row_reg, col_reg}<10'b1001100111)) color_data = 12'b110010101001;
		if(({row_reg, col_reg}==10'b1001100111)) color_data = 12'b110110101001;

		if(({row_reg, col_reg}>=10'b1001101000) && ({row_reg, col_reg}<=10'b1001110011)) color_data = 12'b110010101001;
	end
endmodule