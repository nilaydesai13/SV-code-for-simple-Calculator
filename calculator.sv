`include "definition.pkg";

module calculator(
    input instruction_t ID,
    input logic clock,
    output logic [4:0] result
    );

    always_comb begin
        case (ID.opcode)
            ADD: result = ID.A + ID.B;
            SUB: result = ID.A - ID.B;
        endcase
    end

endmodule
