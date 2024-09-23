// Code your design here
module xorgate (a,b,c);
  input a,b;
  output c;
  
  // estrutural:
  wire      abar, bbar, t1, t2;
  not invA (abar, a);
  not invB (bbar, b);
  and and1 (t1, a, bbar);
  and and2 (t2, b, abar);
  or  or1 (c, t1, t2);

 

  // comportamental
  //assign c=a^b;
endmodule