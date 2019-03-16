`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2018 06:21:49 PM
// Design Name: 
// Module Name: wysw
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


module wysw(

    input clk,
    input de_in,
    input hsync_in,
    input vsync_in,
    input [31 : 0] x,
    input [31 : 0] y,
    input [23 : 0] pixel_in,
    
    output de_out,
    output hsync_out,
    output vsync_out,
    output [23 : 0] pixel_out,
    output [23 : 0] pixel_out_okrag
);
    
    reg [10 : 0] x_pos = 1;
    reg [9 : 0] y_pos = 1;
    wire signed [11 : 0] xdif;
    wire signed [10 : 0] ydif;
    
    assign xdif = x_pos - x[10 : 0];
    assign ydif = y_pos - y[9 : 0];

    always @(posedge clk)
    begin
        
        if(vsync_in == 1)
        begin
            
            x_pos <= 1;
            y_pos <= 1;
        end
        
        if(de_in == 1)
            x_pos <= x_pos + 1;
        
        if(hsync_in == 1 && x_pos != 1)
        begin
        
            x_pos <= 1;
            y_pos <= y_pos + 1;
        end  
    end
    
    assign de_out = de_in;
    assign hsync_out = hsync_in;
    assign vsync_out = vsync_in;
    assign pixel_out = (x_pos == x[10 : 0] || y_pos == y[9 : 0]) ? {8'hff, 8'b0, 8'b0} : pixel_in;
    assign pixel_out_okrag = ((xdif == -6 && ydif == 0) ||
    (xdif == -6 && ydif == -1) ||
    (xdif == -6 && ydif == -2) ||
    (xdif == -5 && ydif == -3) ||
    (xdif == -4 && ydif == -4) ||
    (xdif == -3 && ydif == -5) ||
    (xdif == -2 && ydif == -6) ||
    (xdif == -1 && ydif == -6) ||
    (xdif == 0 && ydif == -6) ||
    (xdif == 1 && ydif == -6) ||
    (xdif == 2 && ydif == -6) ||
    (xdif == 3 && ydif == -5) ||
    (xdif == 4 && ydif == -4) ||
    (xdif == 5 && ydif == -3) ||
    (xdif == 6 && ydif == -2) ||
    (xdif == 6 && ydif == -1) ||
    (xdif == 6 && ydif == 0) ||
    (xdif == 6 && ydif == 1) ||
    (xdif == 6 && ydif == 2) ||
    (xdif == 5 && ydif == 3) ||
    (xdif == 4 && ydif == 4) ||
    (xdif == 3 && ydif == 5) ||
    (xdif == 2 && ydif == 6) ||
    (xdif == 1 && ydif == 6) ||
    (xdif == 0 && ydif == 6) ||
    (xdif == -1 && ydif == 6) ||
    (xdif == -2 && ydif == 6) ||
    (xdif == -3 && ydif == 5) ||
    (xdif == -4 && ydif == 4) ||
    (xdif == -5 && ydif == 3) ||
    (xdif == -6 && ydif == 2) ||
    (xdif == -6 && ydif == 1)) ? {8'hff, 8'b0, 8'b0} : pixel_in;
endmodule
