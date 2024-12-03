`timescale 1ns / 1ps

module vga_top(
    input ClkPort,
    input BtnC,
    input BtnU,
    input [11:0] SW,       // Added 12 switches as input
    
    //VGA signal
    output hSync, vSync,
    output [3:0] vgaR, vgaG, vgaB,
    
    //SSG signal 
    output An0, An1, An2, An3, An4, An5, An6, An7,
    output Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp,
    
    output QuadSpiFlashCS
    );
    
    // Internal wires
    wire bright;
    wire[9:0] hc, vc;
    wire[11:0] rgb;
    
    // Connect switches directly to keySelect
    wire [11:0] keySelect;
    assign keySelect = SW;  // SW[0] is C, SW[1] is C#, etc.
    
    // Module instantiations
    display_controller dc(
        .clk(ClkPort), 
        .hSync(hSync), 
        .vSync(vSync), 
        .bright(bright), 
        .hCount(hc), 
        .vCount(vc)
    );
    
    vga_bitchange vbc(
        .clk(ClkPort), 
        .bright(bright), 
        .keySelect(keySelect),  // Now connected to switches
        .hCount(hc), 
        .vCount(vc), 
        .rgb(rgb)
    );
    
    // VGA color output assignments
    assign vgaR = rgb[11 : 8];
    assign vgaG = rgb[7  : 4];
    assign vgaB = rgb[3  : 0];
    
    // Seven-segment display outputs (all off since we're not using them)
    assign Dp = 1;
    assign {An7, An6, An5, An4, An3, An2, An1, An0} = 8'b11111111;
    assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg} = 7'b1111111;
    
    // Disable memory port
    assign QuadSpiFlashCS = 1'b1;
    
endmodule