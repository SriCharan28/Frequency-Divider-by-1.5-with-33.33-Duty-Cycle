module ring_counter
(
clk,rst,
Q
);

input wire clk;
input wire rst;
output wire [2:0] Q;

///*
//Using Positive Edge Trigerred Data Flip Flops

dffp dff0(clk,rst,1'b0,Q[2],Q[0]);
dffp dff1(clk,1'b0,rst,Q[0],Q[1]);
dffp dff2(clk,1'b0,rst,Q[1],Q[2]);
//*/

/*
//Procedural Modelling

reg [2:0] temp_q;

always@(posedge clk)
begin
    if(rst)
        temp_q<=3'b100;
     else
     begin
        temp_q<={temp_q[1],temp_q[0],temp_q[2]};    
        //temp_q[0]<=temp_q[2];
        //temp_q[1]<=temp_q[0];
        //temp_q[2]<=temp_q[1]; 
     end
end

assign Q=temp_q;
*/

endmodule
