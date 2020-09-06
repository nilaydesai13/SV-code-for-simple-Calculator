`include "definitions.pkg"

module test;
    instruction_t dx;
    logic [4:0] out;
    logic clk =  0;

    calculator u1(
            .result(out),
            .clock(clk),
            .ID(dx)
    );

    always #5 clk = ~clk;

    initial begin
        @(negedge clk) 
        dx.A = 4'b1000;
        dx.B = 4'b1111;
        dx.opcode = ADD;
        @(negedge clk)
        $display("out = %d",out);
        $finish;
    end

endmodule
