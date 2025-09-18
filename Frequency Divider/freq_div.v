//frequency division by 1.5 with 33.33% clock frequency
module freq_div
(
clk,rst,
out
);
input wire clk;
input wire rst;
output wire out;

wire t1,t2;
wire qp0,qp1,qp2;
wire qn1;

dffp dp0(clk,rst,1'd0,qp2,qp0);
dffp dp1(clk,1'd0,rst,qp0,qp1);
dffp dp2(clk,1'd0,rst,qp1,qp2);
dffn dn0(clk,rst,qp1,qn1);
and a0(t1,clk,qp0);
and a1(t2,~clk,qn1);
or o0(out,t1,t2);
endmodule
