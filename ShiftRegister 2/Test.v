module testbench;
    reg clk, rst, ld, sr, sl;
    reg [3:0] d_in;
    wire [3:0] q;
    
    shift_reg uut (
        .clk(clk),
        .rst(rst),
        .ld(ld),
        .sr(sr),
        .sl(sl),
        .d_in(d_in),
        .q(q)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0; rst = 1; ld = 0; sr = 0; sl = 0; d_in = 4'b0000;

        #10 rst = 0;
        #10 ld = 1; d_in = 4'b1010; 
        #10 ld = 0; sr = 1;         
        #10 sr = 0; sl = 1;         
        #10 sl = 0;
        #20 $finish;               
    end
endmodule

