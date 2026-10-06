module controllability_demo_tb;
reg A;
reg B;
wire X;

controllability_demo dut(
    .A(A),
    .B(B),
    .X(X)
);

initial begin 
    $dumpfile("controllability_demo.vcd");
    $dumpvars(0,controllability_demo_tb);

    A=0;
    B=0;
    #10;
    $display ("A=%b B=%b | X=%b",  A,B,X );

    A=0;
    B=1;
    #10;
    $display ("A=%b B=%b | X=%b",  A,B,X );

    A=1;
    B=0;
    #10;
    $display ("A=%b B=%b | X=%b", A,B,X );

    A=1;
    B=1;
    #10;
    $display ("A=%b B=%b | X=%b", A,B,X );

    $display("Simulation completed");
    $finish;

end 
endmodule