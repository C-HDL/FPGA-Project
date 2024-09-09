module divider_odd(
    input wire sys_clk,
    input wire sys_rst_n,
    
    output wire clk_out
    //output reg clk_flag
    );
    reg clk1;
    reg clk2;
    reg [2:0]   cnt;
    always@(posedge sys_clk or negedge sys_rst_n)
        if(sys_rst_n==1'b0)
            cnt<=3'd0;
        else if(cnt==3'd4)
            cnt <= 3'd0;
        else
            cnt<=cnt+3'd1;
     always@(posedge sys_clk or negedge sys_rst_n)
        if(sys_rst_n==1'b0)
            clk1<= 1'b0;
        else if(cnt==3'd2)
            clk1<=1'b1;
        else if(cnt==3'd4)
            clk1<=1'b0;
        else
            clk1<=clk1;
     always@(negedge sys_clk or negedge sys_rst_n)
        if(sys_rst_n==1'b0)
            clk2<= 1'b0;
        else if(cnt==3'd2)
            clk2<=1'b1;
        else if(cnt==3'd4)
            clk2<=1'b0;
        else
            clk2<=clk2;
      assign clk_out=clk1|clk2;
//     always@(posedge sys_clk or negedge sys_rst_n)
//        if(sys_rst_n==1'b0)
//            cnt<=3'd0;
//        else if(cnt==3'd4)
//            cnt <= 3'd0;
//        else
//            cnt<=cnt+3'd1;
//     always@(posedge sys_clk or negedge sys_rst_n)
//        if(sys_rst_n==1'b0)
//            clk_flag<= 1'b0;
//        else if(cnt==3'd3)
//            clk_flag<=1'b1;
//        else
//            clk_flag<=1'b0;       //这种方法更好
endmodule