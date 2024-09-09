module counter
#(
    parameter cnt_max=25'd24_999_999
)
(
    input wire sys_clk,
    input wire sys_rst_n,
    
    output reg out
    );
    
reg [24:0] cnt;
reg        cnt_flag;
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt <= 25'd0;
    else if(cnt == cnt_max)
        cnt <= 25'd0;
    else 
        cnt <= cnt+25'd1;
        
always@(posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_flag <= 1'd0;
    else if(cnt == (cnt_max-25'd1))
        cnt_flag <= 1'd1;
    else 
        cnt_flag <= 1'd0;
        
always@(posedge sys_clk or negedge sys_rst_n)      
    if(sys_rst_n == 1'b0)
        out <= 1'd0;
    else if(cnt_flag==1'd1)
        out <= ~out;
    else
        out<=out;
        

endmodule
