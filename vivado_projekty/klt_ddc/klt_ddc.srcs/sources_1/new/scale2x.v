`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2019 05:29:38 AM
// Design Name: 
// Module Name: scale2x
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module scale2x(
    
    input clk,
    input [7 : 0] A11,
    input [7 : 0] A12,
    input [7 : 0] A21,
    input [7 : 0] A22,
    input de_in,
    input hsync_in,
    input vsync_in,
    
    output clk_2x,
    output [7 : 0] pixel_out,
    output [7 : 0] round_sum_out,
    output de_out,
    output hsync_out,
    output vsync_out,
    
    output [9 : 0] A11pA12_out,
    output [9 : 0] A21pA22_out,
    output [9 : 0] sum_out,
    output ignore_row
);
    
    wire hsync_in_delayed;
    wire de_in_delayed;
    
    wire [9 : 0] A11pA12;
    wire [9 : 0] A21pA22;
    wire [9 : 0] sum;
    wire [7 : 0] round_sum;
    
    reg [7 : 0] output_reg = 0;
    reg clk_2x_reg = 0;
    reg ignore_this_row = 0;
    
    //state machine for ignoring every even row
    reg [1 : 0] state = 0;
    
    
    always @(posedge hsync_in)
    begin
    
        if(state == 2)
            ignore_this_row <= ~ignore_this_row;       
    end
    
    
    always @(posedge clk)
    begin
    
        if(vsync_out)
        begin
            state <= 1;     //new frame
            ignore_this_row <= 0;
        end
            
        if(state == 1 && de_in)
            state <= 2;     //correct row start
        
        clk_2x_reg <= ~clk_2x_reg;
    end
    
    
    always @(posedge clk_2x)
    begin
        
        output_reg <= round_sum;
    end


    adder_10p10e10 A11pA12_adder(
    
        .CLK(clk),
        .A({2'b00, A11}),
        .B({2'b00, A12}),
        .S(A11pA12)
    );     
    
    
    adder_10p10e10 A21pA22_adder(
    
        .CLK(clk),
        .A({2'b00, A21}),
        .B({2'b00, A22}),
        .S(A21pA22)
    );  
    
    
    adder_10p10e10 sum_adder(
    
        .CLK(clk),
        .A(A11pA12),
        .B(A21pA22),
        .S(sum)
    ); 
    
    
    modul_puz #(
        
        .N(3),
        .DELAY(2)
    )
    synch_delay(
        
        .clk(clk),
        .in({de_in, hsync_in, vsync_in}),
        .out({de_in_delayed, hsync_in_delayed, vsync_out})
    );
    
    
    assign sum_out = sum;
    assign round_sum = sum[1] ? (sum[9-:8] + 1) : sum[9-:8];
    assign clk_2x = clk_2x_reg;
    assign pixel_out = output_reg;
    assign de_out = de_in_delayed & ~ignore_this_row;
    assign hsync_out = hsync_in_delayed & ~ignore_this_row;
    
    assign A11pA12_out = A11pA12;
    assign A21pA22_out = A21pA22;
    assign round_sum_out = round_sum;
    assign ignore_row = ignore_this_row;
endmodule
