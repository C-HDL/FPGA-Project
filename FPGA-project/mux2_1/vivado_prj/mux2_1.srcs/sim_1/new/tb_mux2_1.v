`timescale 1ns / 1ns

module tb_mux2_1();
reg   in_1;
reg   in_2;
reg   sel ;

wire  out ;

initial
    begin
        in_1  <=  1'b0;
        in_2  <=  1'b0;
        sel   <=  1'b0;
    
    end
    
always #10 in_1 <=  {$random}  %  2;
always #10 in_2 <=  {$random}  %  2;
always #10 sel  <=  {$random}  %  2;

initial
    begin
        $timeformat(-9,0,"ns",6);
        $monitor("@time ¡¤ ot:in_1=%b.in_2=%b ; sel=%b ¡¤out=%b",$time ,in_1,in_2,sel,out);
    end

mux2_1     mux2_1_inst
(
   .in_1(in_1),
   .in_2(in_2),
   .sel  (sel),
        
   .out  (out)
   
   );

endmodule
