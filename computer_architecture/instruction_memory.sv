module instruction_memory ( 
    input logic [31:0]mem_adress,
    output logic [31:0] mechine_code
);
    logic [31:0]instruction_memory_reg [31:0]='{default:0};
    always_comb begin 
        mechine_code=instruction_memory_reg[mem_adress[31:2]];
    end
    initial begin
        instruction_memory_reg[1]=32'h002081B3;
        instruction_memory_reg[2]=32'h40308233;
        instruction_memory_reg[3]=32'h0041F2B3;
        instruction_memory_reg[4]=32'h0042E333;
        instruction_memory_reg[5]=32'h005323B3;
    end
    

endmodule