module alu (
    input logic[31:0]a,b,
    input logic[2:0]operations,
    output logic[31:0]distination_data
);
logic [32:0]ini_out=17'b0;
 logic carry;

always@* begin 
    case (operations)
     3'd0: ini_out=b+a;
     3'd1: ini_out=b-a;
     3'd2: ini_out=b<<a;
     3'd3: ini_out=(b<a)?1:0;
     3'd4: ini_out=b^a;
     3'd5:ini_out=b>>a;
     3'd6:ini_out=b|a;
     3'd7:ini_out=b&a;
        default: 
        ini_out=17'b0;
    endcase
    carry=ini_out[32];
    distination_data=ini_out[31:0];
end   
endmodule