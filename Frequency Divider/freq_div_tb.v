module freq_div_tb;
reg clk;
reg rst;
wire out;

freq_div dut(.clk(clk),.rst(rst),.out(out));

parameter period = 40;

task clock;
begin
    clk=1'b0;
    #(period/2);
    clk=1'b1;
    #(period/2);
end
endtask

task reset;
begin
    @(negedge clk)
    begin
        rst=1'b1;
    end
    @(negedge clk)
    begin
        rst=1'b0;
    end
end
endtask

always
begin
    clock;
end

initial
begin
    reset;
end

initial
begin
    $monitor("TIME =",$time,"\n CLOCK = %d, RESET = %d, OUTPUT = %d",clk,rst,out);
end

initial
begin
    #400;
    $finish;
end

endmodule
