module mux_4to1(input [3:0]in,
input [1:0]sel,
output reg out);
always @(*) begin
    case (sel)
        2'b00: out = in[0];   // if sel is 00, output is in[0]
        2'b01: out = in[1];   // if sel is 01, output is in[1]
        2'b10: out = in[2];   // if sel is 10, output is in[2]
        2'b11: out = in[3];   // if sel is 11, output is in[3]
        default: out = 1'b0;  // default case, output 0

endcase
end
endmodule