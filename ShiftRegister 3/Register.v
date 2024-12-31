module register (
    input wire clk,             
    input wire rst,             
    input wire [3:0] int_q,     
    output reg [3:0] q          
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;      
        else
            q <= int_q;         
    end
endmodule
