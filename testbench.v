`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module voting_machine_tb(

    );
reg clk,rst,go;
reg  [3:0]pin;
reg P_1,P_2,P_3,P_4;
reg result;

wire [5:0] pcount_1,pcount_2,pcount_3,pcount_4;
wire authenticated;
wire vote_done;
wire [2:0]state;
wire [1:0]winner;

voting_machine dut(clk,rst,go,pin,P_1,P_2,P_3,P_4,result,pcount_1,pcount_2,pcount_3,pcount_4,authenticated,vote_done,state,winner);

always
begin #5 clk=~clk;
end

initial
begin
{clk,rst,go,pin,P_1,P_2,P_3,P_4,result}=0;
end

initial
begin
rst=1;
#10 rst=0;
$monitor("state is %b,winner is %b",state,winner);
#20 go=1;
pin=4'b0110;
#10;
go=0;
#10;
P_1=1;
#20;
P_1=0;
result = 1;
#30;
result=0;

#10 go=1;
pin=4'b0110;
#10;
go=0;
#10;
P_3=1;
#20;
P_3=0;
result = 1;
#30;
result=0;

#10 go=1;
pin=4'b0110;
#10;
go=0;
#10;
P_3=1;
#20;
P_3=0;
result = 1;
#30;
result=0;



#10 go=1;
pin=4'b0110;
#10;
go=0;
#10;
P_2=1;#20;
P_2=0;
result = 1;
#30;
result=0;


#20 go=1;
pin=4'b0110;
#10;
go=0;
#10;
P_4=1;
#20;
P_4=0;
result = 1;
#30;
result=0;

#20;
go = 1;
pin = 4'b0110;
#10;
go=0;
#10;
P_4 = 1;
#10;
P_4 = 0; result = 1;
#30;
result=0;

end
endmodule

