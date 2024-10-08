module sum1b_primitive (
    input A, 
    input B, 
    input Ci,
    output wire Co,
    output wire So);
  
    wire a_ab;
    wire x_ab;
    wire cout_t;
  
    and(a_ab,A,B);
    xor(x_ab,A,B);
  
    xor(So,x_ab,Ci);
    and(cout_t,x_ab,Ci);
  
    or (Co,cout_t,a_ab);
  
  endmodule