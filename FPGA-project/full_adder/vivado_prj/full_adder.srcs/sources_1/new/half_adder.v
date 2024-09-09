module half_adder
(
    input wire    in_1,
    input wire    in_2,
 
    output   wire    sum,
    output   wire    count
    );
//assign {count,sum}=in_1+in_2;  //位拼接的方式
assign sum=in_1+in_2;
assign count=in_1 & in_2;
    
    
    
    
    
endmodule
