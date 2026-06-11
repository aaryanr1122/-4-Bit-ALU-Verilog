module alu_tb;

reg [3:0] a;
reg [3:0] b;
reg [2:0] sel;

wire [3:0] result;
wire carry;
wire zero;

alu uut(
    .a(a),
    .b(b),
    .sel(sel),
    .result(result),
    .carry(carry),
    .zero(zero)
);

initial begin

    $monitor("time=%0t sel=%b a=%b b=%b result=%b carry=%b zero=%b" ,
             $time, sel, a, b, result,carry,zero);

    a = 4'b1111;
    b = 4'b0001;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;

    $finish;

end

endmodule