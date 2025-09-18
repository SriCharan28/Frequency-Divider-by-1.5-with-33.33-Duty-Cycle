module dffp
(
clk,preset,clear,d,
q
);
input wire clk;
input wire preset,clear;
input wire d;
output reg q;

always@(posedge clk, posedge preset, posedge clear)
begin
    case({preset,clear})
        2'd1:q<=1'd0;
        2'd2:q<=1'd1;
        default:q<=d;
    endcase
end

endmodule