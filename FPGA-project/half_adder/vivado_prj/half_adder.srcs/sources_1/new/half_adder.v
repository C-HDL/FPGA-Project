module half_adder
(
    input wire    in_1,
    input wire    in_2,
 
    output   wire    sum,
    output   wire    count
    );
//assign {count,sum}=in_1+in_2;  //λƴ�ӵķ�ʽ
assign sum=in_1+in_2;
assign count=in_1 & in_2;
    
    
    
    
    
endmodule
