module controller (
    input logic [31:0]instructions ,
    output logic [2:0]operations,logic write_enable
);
logic [16:0]opcode_f3_f7;
always_comb begin 
    opcode_f3_f7={instructions[31:25],instructions[14:12],instructions[6:0]};
    case (opcode_f3_f7)
     17'b00000000000110011:begin
     write_enable=1'b1;operations=3'h0;
      end 
     17'b01000000000110011:begin
     write_enable=1'b1;operations=3'h1;
      end 
     17'b00000000010110011:begin
     write_enable=1'b1;operations=3'h2;
      end 
     17'b00000000100110011:begin
     write_enable=1'b1;operations=3'h3;
      end 
     17'b00000001000110011:begin
     write_enable=1'b1;operations=3'h4;
      end 
     17'b00000001010110011:begin
     write_enable=1'b1;operations=3'h5;
      end 
     17'b00000001100110011:begin
     write_enable=1'b1;operations=3'h6;
      end  
     17'b00000001110110011:begin
     write_enable=1'b1;operations=3'h7; 
     end 
        default:begin
        write_enable=1'b0;operations=3'h0; 
        end
    endcase
end
    
endmodule