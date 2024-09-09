module mux2_1
(
   input   wire   [0:0]    in_1,
   input   wire   [0:0]    in_2,
   input   wire   [0:0]    sel,
   
   
   output  reg    [0:0]    out
   
   );
   
always@(*)
   if(sel==1)    //verilog中if的begin end等于c中的{ }，若只有一条语句，则不用写
      out=in_1;
   else    
      out=in_2;
 
endmodule
