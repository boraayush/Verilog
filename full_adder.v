module full_adder(input a,input b,input c,output sum,output carry);
wire t1,t2,t3;
xor X1(sum,a,b,c);
and A1(t1,a,b);
and A2(t2,b,c);
and A3(t3,c,a);
or O1(carry,t1,t2,t3);
endmodule
