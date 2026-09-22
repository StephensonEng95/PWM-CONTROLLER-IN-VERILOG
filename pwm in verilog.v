// pwm controller written in verilog

module pwm_controller #(
    parameter COUNTER_WIDTH = 8   // This constant determines PWM resolution:
                                  // 8 bits which is 256 duty cycle steps
)(
    input  wire                      clk,
    input  wire                      rst_n,        // Active and low synchronous reset
  input  wire [COUNTER_WIDTH-1:0]  duty_cycle,    // 0 means always off, (2^WIDTH - 1)  always on
    output reg                       pwm_out     // the led to control
);

    reg [COUNTER_WIDTH-1:0] counter;

    always @(posedge clk) begin
        if (!rst_n) begin
            counter  <= 0;
            pwm_out  <= 0;
        end else begin
            counter <= counter + 1;                 // Free running counter, wraps automatically
          pwm_out <= (counter < duty_cycle);       // Led set to High while counter is below the threshold
        end
    end

endmodule