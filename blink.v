`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2023 01:17:19 PM
// Design Name: 
// Module Name: blink
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


module blink(
    input clk,
    //input on,
   // input off,
    output reg led
    );
    reg [31:0] counter;
    
    always @(posedge clk) begin
    if (counter == 50000000) begin
    counter = 0;
    led =~led;
    end 
    else begin 
    counter =counter +1;
    end 
    end
    /*if (off) 
    begin 
    assign led = 0;
    end
    if (on)
    begin
    assign led = clk;
    end*/
endmodule
