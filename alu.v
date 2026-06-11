module alu (input [3:0]a,
       input [3:0]b,
       input [2:0]sel,
       output reg [3:0]result,
       output reg zero,
       output reg carry);
       always @(*) begin
        carry=0;
        case(sel)
        3'b000:
        begin
            {carry,result}=a+b;
        end
        3'b001:result=a-b;
        3'b010:result=a&b;
        3'b011:result=a|b;
        3'b100:result=a^b;
        3'b101:result=~a;
        default: result=4'b0000;
        endcase
        if(result==4'b0000)
        zero=1'b1;
        else
        zero=1'b0;
       end
endmodule