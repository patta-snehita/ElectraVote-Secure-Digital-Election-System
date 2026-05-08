`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module voting_machine(
input clk,rst,go,
input [3:0]pin,
input P_1,P_2,P_3,P_4,
input result,

output reg [5:0] pcount_1,pcount_2,pcount_3,pcount_4,
output reg authenticated,
output reg vote_done,
output reg [2:0]state,
output reg [1:0]winner
 );
 
 
 parameter s0=3'b000,  //idle
           s1=3'b001,   //auth
           s2=3'b010,  //vote
           s3=3'b011, //confirm
           s4=3'b100;  //result
           
 parameter correct_pin=4'b0110;
 
 always@(posedge clk or posedge rst)
 begin
   if(rst)
   begin
   state<=s0;
   pcount_1<=0;
   pcount_2<=0;
   pcount_3<=0;
   pcount_4<=0;
   authenticated<=0;
   vote_done<=0;
   winner<=0;
   end
   else
   begin
   case(state)
   
   s0:     //idle
   begin
   authenticated<=0;
   vote_done<=0;
   if(go)
       state<=s1;
   else
   state<=s0;
   end
   
   s1:    //auth
   if(pin==correct_pin)
   begin
   authenticated<=1;
   state<=s2;
   end
   else
   begin
   authenticated<=0;
   state<=s0;
   end
   
   s2:    //voting
   begin
   if(vote_done==0)
   begin
   if(P_1)
     begin
     pcount_1<=pcount_1 +1;
     vote_done<=1;
     state<=s3;
     end
   else if(P_2)
     begin
     pcount_2<=pcount_2 +1;
     vote_done<=1;
     state<=s3;
     end
   else if(P_3)
     begin
     pcount_3<=pcount_3 +1;
     vote_done<=1;
     state<=s3;
     end
   else if(P_4)
     begin
     pcount_4<=pcount_4 +1;
     vote_done<=1;
     state<=s3;
     end
    else
    state<=s2;
   end
   end
   
   s3:
   begin
   if(result)
   state<=s4;
   else
   state<=s0;
   end
   
   s4:
   begin
   if(pcount_1 >= pcount_2 && pcount_1>= pcount_3 && pcount_1>=pcount_4)
   winner <= 2'b00;
   
   else if(pcount_2 >= pcount_1 && pcount_2>= pcount_3 && pcount_2>=pcount_4)
   winner <= 2'b01;
   
   else if(pcount_3 >= pcount_1 && pcount_3>= pcount_2 && pcount_3>=pcount_4)
   winner <= 2'b10;
   
   else 
   winner <= 2'b11;
   end
   
   default: state<=s0;
   endcase
   end
   end
  
   
   
endmodule
