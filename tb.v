module sample(A,B,C,D,E);
  input A,B,C;
  output D,E;

  wire w1;
  and g1(w1,A,B);
  not g2(E,C);
  or g3(D,w1,E);

endmodule



module tb;


reg A,B,C;
wire D,E;

sample uut(A,B,C,D,E);

initial begin
    $dumpfile("tb_tb.vcd");
    $dumpvars(0,tb);

    A=0;
    B=0;
    C=0;

    #10;

    A=0;
    B=0;
    C=1;

    #10;

    A=0;
    B=1;
    C=0;

    #10;

    A=0;
    B=1;
    C=1;

    #10;

    $display("Test complete");

end

endmodule


/*adhitya@Adhityas-MacBook-Air ~ % iverilog -o tb.vvp tb.v
adhitya@Adhityas-MacBook-Air ~ % vvp tb.v
tb.v:1: syntax error
adhitya@Adhityas-MacBook-Air ~ % vvp tb.vvp
VCD info: dumpfile tb_tb.vcd opened for output.
Test complete
adhitya@Adhityas-MacBook-Air ~ % */
