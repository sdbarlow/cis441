module dec_38_al(x_in, y_out);
    input [2:0] x_in;
    output [7:0] y_out;

    wire [7:0] y_activehigh;

dec_38 dec_ah(.x_in(x_in), .y_out(y_activehigh));

    assign y_out = ~y_activehigh;

endmodule