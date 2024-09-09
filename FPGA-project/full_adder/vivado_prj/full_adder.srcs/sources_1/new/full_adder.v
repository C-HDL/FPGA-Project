module full_adder(
    input wire  in_1,
    input wire  in_2,
    input wire  cin ,
    
    output wire  sum ,
    output wire  count

    );
    
    wire    h0_sum;
    wire    h0_count;
    wire    h1_count;
half_adder  half_adder_inst0
(
    .in_1(in_1),
    .in_2(in_2), 
         
    .sum (h0_sum),  
    .count(h0_count)
    );   
    
 half_adder  half_adder_inst1
(
    .in_1(h0_sum),
    .in_2(cin),
         
    .sum (sum),
    .count(h1_count)
    );
       
 assign  count = h0_count | h1_count; 
 
endmodule
