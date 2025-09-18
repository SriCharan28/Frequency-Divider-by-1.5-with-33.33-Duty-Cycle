module dffn
(
clk,rst,d,
q
);
input wire clk;
input wire rst;
input wire d;
output reg q;

always@(negedge clk)
begin
    if(rst==1'd1)
    begin
        q<=1'd0;
    end
    else
    begin
        q<=d;
    end
end

endmodule