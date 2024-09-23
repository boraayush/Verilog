module tb_halfadder;
reg a,b;
wire sum,carry;
half_adder uut (.a(a),.b(b),.sum(sum),.
carry(carry));
 initial begin
        // Initialize the dump file and variables for waveform analysis
        $dumpfile("half_adder.vcd");  
        $dumpvars(0, tb_halfadder); 

        a=0;b=0; #10
        a=0;b=1; #10
        a=1;b=0; #10
        a=1;b=1; #10
       $finish;
 end
 initial begin
        $monitor("At time %0t: a = %b, b = %b, sum = %b,carry=%b", $time,  a, b, sum,carry);
    end
endmodule
