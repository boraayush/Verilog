module tb_mux_2to1;
    reg a, b, sel;  // Declare inputs as registers
    wire out;       // Declare output as wire

    // Instantiate the 2:1 MUX
    mux_2to1 uut (
        .a(a), 
        .b(b), 
        .sel(sel), 
        .out(out)
    );

    // Test sequence
    initial begin
        // Initialize the dump file and variables for waveform analysis
        $dumpfile("mux_2to1.vcd");  
        $dumpvars(0, tb_mux_2to1);  

        // Test Case 1: sel = 0, a = 0, b = 0, expect out = 0
        a = 0; b = 0; sel = 0; #10;
        // Test Case 2: sel = 1, a = 0, b = 1, expect out = 1
        a = 0; b = 1; sel = 1; #10;
        // Test Case 3: sel = 0, a = 1, b = 0, expect out = 1
        a = 1; b = 0; sel = 0; #10;
        // Test Case 4: sel = 1, a = 1, b = 0, expect out = 0
        a = 1; b = 0; sel = 1; #10;

        // End the simulation
        $finish;
    end

    // Monitor the input and output signals
    initial begin
        $monitor("At time %0t: sel = %b, a = %b, b = %b, out = %b", $time, sel, a, b, out);
    end
endmodule
