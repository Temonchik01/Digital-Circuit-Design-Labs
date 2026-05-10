module Testbench;
  reg [7:0] R, S;
  reg CI;
  reg [1:0] sel;
  
  wire [7:0] f_alb, norm_f;
  wire flag_C, flag_V, flag_N, flag_Z;
  
  ALB uut(
    .R(R), .S(S), .CI(CI), .sel(sel),
    .f_alb(f_alb), .norm_f(norm_f),
    .flag_C(flag_C), .flag_V(flag_V), .flag_N(flag_N), .flag_Z(flag_Z)
  );
  initial begin
    $display("OP |    R     |    S     |CI | f        | norm     | C V N Z");
    $monitor("%b | %b | %b | %b | %b | %b | %b %b %b %b ",
    sel, R, S, CI, f_alb, norm_f,
    flag_C, flag_V, flag_N, flag_Z);
    
    R = 8'b10000000;
    S = 8'b00000001;
    CI = 1;
    
    sel = 2'b00; #20;
    sel = 2'b01; #20;
    sel = 2'b10; #20;
    sel = 2'b11; #20;
    $stop;
  end
endmodule