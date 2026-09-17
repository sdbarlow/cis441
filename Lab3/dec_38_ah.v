module dec_38(x_in, y_out);
    input [2:0] x_in;
    output [7:0] y_out;

    assign y_out = 
            (x_in == 3'o0) ? 8'b00000001:
            (x_in == 3'o1) ? 8'b00000010:


endmodule