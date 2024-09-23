module mux_2to1(input a, input b, input sel, output out);
    // Selects between a and b based on sel
    assign out = sel ? b : a;
endmodule

