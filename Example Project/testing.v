module testing(
    input wire CLK100MHZ,
    input wire sw0,
    input wire sw1,
    output wire led2,
    output wire led5
    );

    blinky test_flashing (
        .clk(CLK100MHZ),
        .led(led5)
    );

    xor_gate test_switches (
        .a(sw0),
        .b(sw1),
        .y(led2)
    );
endmodule


module xor_gate (
    input wire a,
    input wire b,
    output wire y
    );

    assign y = a ^ b;

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