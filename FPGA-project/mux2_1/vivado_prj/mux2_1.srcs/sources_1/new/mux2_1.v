module mux2_1
(
   input   wire   [0:0]    in_1,
   input   wire   [0:0]    in_2,
   input   wire   [0:0]    sel,
   
   
   output  reg    [0:0]    out
   
   );
   
always@(*)
   if(sel==1)    //verilog��if��begin end����c�е�{ }����ֻ��һ����䣬����д
      out=in_1;
   else    
      out=in_2;
 
endmodule
