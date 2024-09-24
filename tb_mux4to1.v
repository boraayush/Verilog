module tb_mux4to1;
  reg [3:0] in;
    reg [1:0] sel;
    wire out;
    
    // Instantiate the mux_4to1 module
    mux_4to1 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );
    
    // Test stimulus
    initial begin
        // Display output header
        $monitor("Time = %0t | sel = %b | in = %b | out = %b", $time, sel, in, out);
        
        // Test case 1: sel = 00, input 0 should be selected
        in = 4'b1010;  // Inputs: 1010
        sel = 2'b00;   // Select in[0], expect out = 1'b0
        #10;           // Wait for 10 time units
        
        // Test case 2: sel = 01, input 1 should be selected
        sel = 2'b01;   // Select in[1], expect out = 1'b1
        #10;
        
        // Test case 3: sel = 10, input 2 should be selected
        sel = 2'b10;   // Select in[2], expect out = 1'b0
        #10;
        
        // Test case 4: sel = 11, input 3 should be selected
        sel = 2'b11;   // Select in[3], expect out = 1'b1
        #10;
        
        // Finish simulation
        $finish;
    end
endmodule