module multiplexer (
    input [3:0] D0, D1, D2, D3, D4,
    input A1, A2, A3, A4,
    output [3:0] Q
);

assign Q = ({4{~A1 & ~A2 & ~A3 & ~A4}} & D0) | 
           ({4{~A1 & ~A2 & ~A3 &  A4}} & D1) | 
           ({4{~A1 & ~A2 &  A3 & ~A4}} & D2) | 
           ({4{~A1 & ~A2 &  A3 &  A4}} & D3) | 
           ({4{~A1 &  A2 & ~A3 & ~A4}} & D4); 

endmodule