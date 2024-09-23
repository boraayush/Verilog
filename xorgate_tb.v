module xorgate_tb;
  reg t_a,t_b;
  wire t_c;
  // instantiate the module, map connecetions
  xorgate xorg( .a(t_a), .b(t_b), .c(t_c) );
  initial
    begin
       $dumpfile("dump.vcd");
  		$dumpvars(1);
    end
  
  // mensagem: galo: 01100111 01100001 01101100 01101111 (a)
  // OTP: 00110100 11100000 11111100 10010100            (b)
  // MENSAGEM CIFRADA COM O OTP ACIMA: 
  
  initial
    begin
      $monitor($time,"  ",t_a,t_b," output= ", t_c);
      
      //bit #1
      t_a = 1'b0;
      t_b = 1'b0;
      
      #1
      //bit #2
      t_a = 1'b1;
      t_b = 1'b0;
      
      #1
      //bit #3
      t_a = 1'b1;
      t_b = 1'b1;
      
      #1
      //bit #4
      t_a = 1'b0;
      t_b = 1'b0;
      
      #1
      //bit #5
      t_a = 1'b0;
      t_b = 1'b0;
      
      #3
      t_a = 1'b1;
      t_b = 1'b0;
      
      #2
      t_a = 1'b1;
      t_b = 1'b1;
      
      #2
      t_a = 1'b0;
      t_b = 1'b0;
      
      #2
      t_a = 1'b1;
      t_b = 1'b1;
      
            
      #1
      t_a = 1'b1;
      t_b = 1'b0;
      
      #1
      t_a = 1'b0;
      t_b = 1'b1;
      
      #1
      t_a = 1'b1;
      t_b = 1'b0;
      
      #1
      t_a = 1'b0;
      t_b = 1'b1;
      
      #1
      t_a = 1'b1;
      t_b = 1'b0;
      
      #1
      t_a = 1'b0;
      t_b = 1'b1;
      
      #1
      t_a = 1'b1;
      t_b = 1'b0;
      
      #1
      t_a = 1'b0;
      t_b = 1'b1;
      
      #5
      $display("Aeee Garoto! Turma ISL rocks.");
    end
endmodule
