`timescale 1ns / 1ns

module tb_counter( );
reg sys_clk;
reg sys_rst_n;

wire out;

initial
    begin 
        sys_clk=1'b1;
        sys_rst_n<=1'b0;
        #20
        sys_rst_n<=1'b1;
    end
    
always #10 sys_clk=~sys_clk;
initial
begin
    $timeformat (-9,0 , "ns",6);
    $monitor ("@time ¡¤%t : out=%b",$time,out);
end

counter 
#(
    .cnt_max(25'd24)
)
conuter_inst
(
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    
    .out(out)
    );   
endmodule
