module Multiplier_manual_clk(
	input wire [3:0] A, B,
	output reg [7:0] partial,
	input wire clk_5Khz,
	input wire push_button
	);

	reg debounced_clk_sig;

	button_debouncer #64 DebouncerModule(
		.clk (clk_5Khz),
		.button (push_button),
		.debounced_button (debounced_clk_sig)
		);

endmodule : Multiplier_manual_clk



