`timescale 1ns/1ps

module subtractor_tb;

reg A;
reg B;
reg Bin;

wire Difference;
wire Bout;

subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Difference(Difference),
    .Bout(Bout)
);

initial begin

    $display("A B Bin | Difference Bout");
    $display("-------------------------");

    A = 0; B = 0; Bin = 0; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 0; B = 0; Bin = 1; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 0; B = 1; Bin = 0; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 0; B = 1; Bin = 1; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 1; B = 0; Bin = 0; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 1; B = 0; Bin = 1; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 1; B = 1; Bin = 0; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    A = 1; B = 1; Bin = 1; #10;
    $display("%b %b  %b  |     %b       %b", A, B, Bin, Difference, Bout);

    $finish;
end

endmodule