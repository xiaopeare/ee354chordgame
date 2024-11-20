`timescale 1ns / 1ps

module vga_bitchange(
    input clk,
    input bright,
    input [11:0] keySelect,
    input [9:0] hCount, vCount,
    output reg [11:0] rgb
);

    // Color parameters - warmer, more appealing colors
    parameter BACKGROUND = 12'hCA9; // Warm beige
    parameter BLACK = 12'h000;
    parameter WHITE = 12'hFFF;
    parameter PASTEL_BLUE = 12'hBDF;
   // parameter BORDER = 12'h865; // Darker brown for key borders
    parameter TEXT_COLOR = 12'h432; // Dark brown for text
    
    // Piano dimensions
    parameter WHITE_KEY_WIDTH = 45;  // Slightly wider
    parameter WHITE_KEY_HEIGHT = 180;
    parameter BLACK_KEY_WIDTH = 25;
    parameter BLACK_KEY_HEIGHT = 110;
    parameter KEY_GAP = 2; // Gap between keys
    
    // Piano position (centered)
    parameter PIANO_START_X = 220; // Adjusted for center
    parameter PIANO_START_Y = 200; // Moved down to make room for text
    
    // Text position
    parameter TEXT_Y = 100; // Y position for "Lvl 1"
    parameter TEXT2_Y = 140; // Y position for "C chord"
    
    // White key positions with gaps
    parameter C_POS  = PIANO_START_X;
    parameter D_POS  = PIANO_START_X + (WHITE_KEY_WIDTH + KEY_GAP);
    parameter E_POS  = PIANO_START_X + (WHITE_KEY_WIDTH + KEY_GAP) * 2;
    parameter F_POS  = PIANO_START_X + (WHITE_KEY_WIDTH + KEY_GAP) * 3;
    parameter G_POS  = PIANO_START_X + (WHITE_KEY_WIDTH + KEY_GAP) * 4;
    parameter A_POS  = PIANO_START_X + (WHITE_KEY_WIDTH + KEY_GAP) * 5;
    parameter B_POS  = PIANO_START_X + (WHITE_KEY_WIDTH + KEY_GAP) * 6;
    parameter C2_POS = PIANO_START_X + (WHITE_KEY_WIDTH + KEY_GAP) * 7;
    
    // Black key positions
    parameter CS_POS = PIANO_START_X + (WHITE_KEY_WIDTH - BLACK_KEY_WIDTH/2);
    parameter DS_POS = PIANO_START_X + ((WHITE_KEY_WIDTH + KEY_GAP) * 2 - BLACK_KEY_WIDTH/2);
    parameter FS_POS = PIANO_START_X + ((WHITE_KEY_WIDTH + KEY_GAP) * 4 - BLACK_KEY_WIDTH/2);
    parameter GS_POS = PIANO_START_X + ((WHITE_KEY_WIDTH + KEY_GAP) * 5 - BLACK_KEY_WIDTH/2);
    parameter AS_POS = PIANO_START_X + ((WHITE_KEY_WIDTH + KEY_GAP) * 6 - BLACK_KEY_WIDTH/2);
    
    // Text display signals
    wire inLvl1Text;
    wire inCChordText;

    // Simple text display logic (you may want to implement a more sophisticated character generator)
    assign inLvl1Text = (vCount >= TEXT_Y && vCount < TEXT_Y + 20 &&
                        hCount >= 360 && hCount < 440);
    assign inCChordText = (vCount >= TEXT2_Y && vCount < TEXT2_Y + 20 &&
                          hCount >= 350 && hCount < 450);
    
    // Key detection wires
    wire inC, inD, inE, inF, inG, inA, inB, inC2;
    wire inCs, inDs, inFs, inGs, inAs;
    
    // White key detection including borders
    assign inC = (hCount >= C_POS && hCount < C_POS + WHITE_KEY_WIDTH &&
                 vCount >= PIANO_START_Y && vCount < PIANO_START_Y + WHITE_KEY_HEIGHT);
    assign inD = (hCount >= D_POS && hCount < D_POS + WHITE_KEY_WIDTH &&
                 vCount >= PIANO_START_Y && vCount < PIANO_START_Y + WHITE_KEY_HEIGHT);
    assign inE = (hCount >= E_POS && hCount < E_POS + WHITE_KEY_WIDTH &&
                 vCount >= PIANO_START_Y && vCount < PIANO_START_Y + WHITE_KEY_HEIGHT);
    assign inF = (hCount >= F_POS && hCount < F_POS + WHITE_KEY_WIDTH &&
                 vCount >= PIANO_START_Y && vCount < PIANO_START_Y + WHITE_KEY_HEIGHT);
    assign inG = (hCount >= G_POS && hCount < G_POS + WHITE_KEY_WIDTH &&
                 vCount >= PIANO_START_Y && vCount < PIANO_START_Y + WHITE_KEY_HEIGHT);
    assign inA = (hCount >= A_POS && hCount < A_POS + WHITE_KEY_WIDTH &&
                 vCount >= PIANO_START_Y && vCount < PIANO_START_Y + WHITE_KEY_HEIGHT);
    assign inB = (hCount >= B_POS && hCount < B_POS + WHITE_KEY_WIDTH &&
                 vCount >= PIANO_START_Y && vCount < PIANO_START_Y + WHITE_KEY_HEIGHT);
    assign inC2 = (hCount >= C2_POS && hCount < C2_POS + WHITE_KEY_WIDTH &&
                  vCount >= PIANO_START_Y && vCount < PIANO_START_Y + WHITE_KEY_HEIGHT);
    
    // Black key detection
    assign inCs = (hCount >= CS_POS && hCount < CS_POS + BLACK_KEY_WIDTH &&
                  vCount >= PIANO_START_Y && vCount < PIANO_START_Y + BLACK_KEY_HEIGHT);
    assign inDs = (hCount >= DS_POS && hCount < DS_POS + BLACK_KEY_WIDTH &&
                  vCount >= PIANO_START_Y && vCount < PIANO_START_Y + BLACK_KEY_HEIGHT);
    assign inFs = (hCount >= FS_POS && hCount < FS_POS + BLACK_KEY_WIDTH &&
                  vCount >= PIANO_START_Y && vCount < PIANO_START_Y + BLACK_KEY_HEIGHT);
    assign inGs = (hCount >= GS_POS && hCount < GS_POS + BLACK_KEY_WIDTH &&
                  vCount >= PIANO_START_Y && vCount < PIANO_START_Y + BLACK_KEY_HEIGHT);
    assign inAs = (hCount >= AS_POS && hCount < AS_POS + BLACK_KEY_WIDTH &&
                  vCount >= PIANO_START_Y && vCount < PIANO_START_Y + BLACK_KEY_HEIGHT);
    
    // Key border detection
   // wire inKeyBorder;
   /* assign inKeyBorder = (vCount == PIANO_START_Y || 
                         vCount == PIANO_START_Y + WHITE_KEY_HEIGHT - 1 ||
                         hCount == C_POS || 
                         hCount == C2_POS + WHITE_KEY_WIDTH - 1 ||
                         (hCount % (WHITE_KEY_WIDTH + KEY_GAP) == 0 && 
                          vCount >= PIANO_START_Y && 
                          vCount < PIANO_START_Y + WHITE_KEY_HEIGHT));*/
    
    // Color selection logic
    always @(*) begin
        if (~bright)
            rgb = BLACK;
        else if (inLvl1Text)
            rgb = TEXT_COLOR;
        else if (inCChordText)
            rgb = TEXT_COLOR;
        //else if (inKeyBorder)
         //  rgb = BORDER;
        else if (inCs || inDs || inFs || inGs || inAs) begin
            // Black keys
            case (1'b1)
                inCs: rgb = keySelect[1] ? PASTEL_BLUE : BLACK;
                inDs: rgb = keySelect[3] ? PASTEL_BLUE : BLACK;
                inFs: rgb = keySelect[6] ? PASTEL_BLUE : BLACK;
                inGs: rgb = keySelect[8] ? PASTEL_BLUE : BLACK;
                inAs: rgb = keySelect[10] ? PASTEL_BLUE : BLACK;
                default: rgb = BLACK;
            endcase
        end
        else if (inC || inD || inE || inF || inG || inA || inB || inC2) begin
            // White keys
            case (1'b1)
                inC:  rgb = keySelect[0] ? PASTEL_BLUE : WHITE;
                inD:  rgb = keySelect[2] ? PASTEL_BLUE : WHITE;
                inE:  rgb = keySelect[4] ? PASTEL_BLUE : WHITE;
                inF:  rgb = keySelect[5] ? PASTEL_BLUE : WHITE;
                inG:  rgb = keySelect[7] ? PASTEL_BLUE : WHITE;
                inA:  rgb = keySelect[9] ? PASTEL_BLUE : WHITE;
                inB:  rgb = keySelect[11] ? PASTEL_BLUE : WHITE;
                inC2: rgb = WHITE;
                default: rgb = WHITE;
            endcase
        end
        else
            rgb = BACKGROUND;
    end

endmodule