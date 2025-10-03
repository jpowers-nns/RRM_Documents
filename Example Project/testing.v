`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:55:26 PM
// Design Name: 
// Module Name: testing
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


module testing(
    input wire CLK100MHZ,
    input wire sw0,
    output wire led2,
    output wire led5
    );

    blinky test_blinks (
        .clk(CLK100MHZ),
        .led(led5)
    );
    
    reg result;
    assign led2 = result;
    
    always@(*) begin
        if(sw0) begin
            result = 1;
        end else begin
            result = 0;
        end
    end
endmodule


module blinky (
    input wire clk,
    output reg led
);

localparam integer COUNT_MAX = 50_000_000 - 1;
reg [25:0] counter;


always @(posedge clk) begin
    if (counter == COUNT_MAX) begin
        counter <= 0;   // RESET COUNTER
        led <= ~led; // TOGGLE LED
    end else begin
        counter <= counter + 1;
    end
end

endmodule