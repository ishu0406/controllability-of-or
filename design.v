module controllability_demo(
    input A,
    input B,
    output X
);
assign X = A | B;
endmodule 