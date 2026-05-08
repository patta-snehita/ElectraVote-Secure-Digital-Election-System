 Secure Electronic Voting Machine using Verilog
 
Overview:
This project implements a Secure Electronic Voting Machine (EVM) using Verilog HDL and Finite State Machine (FSM) design methodology.  
The system provides secure voting through password authentication, one-vote locking, vote counting, and winner declaration.
The design is simulated using Xilinx Vivado.

Features:
- Password Authentication
- One Vote Per Authentication
- FSM-Based Control Logic
- Result/Winner Declaration
- Reset Functionality
- FPGA Compatible Design


Finite State Machine (FSM):

The voting machine operates using the following FSM states:

s0 - Idle State 
s1 - Authentication State 
s2 - Voting State 
s3 -Confirmation State 
 s4 - Result State 
 
State Flow:
Idle → Authentication → Voting → Confirmation → Result


Inputs:

clk - System Clock 
rst - Reset Signal 
go - Starts Authentication 
pin[3:0] - User Password 
P_1 - Vote for Candidate 1 
P_2 - Vote for Candidate 2 
P_3 - Vote for Candidate 3 
P_4 - Vote for Candidate 4 
result - Displays Final Result 


Outputs:


pcount_1 - Vote Count of Candidate 1 
pcount_2 - Vote Count of Candidate 2 
pcount_3 - Vote Count of Candidate 3 
pcount_4 - Vote Count of Candidate 4 
authenticated - Authentication Status 
vote_done - Vote Completion Signal 
state - Current FSM State 
winner - Winning Candidate 


Working Principle:

1. System starts in Idle state.
2. User enters the correct PIN.
3. After successful authentication, voting is enabled.
4. User casts vote for one candidate.
5. Vote is counted and locked.
6. Result button displays the winner.
7. Candidate with highest votes is declared as winner.


Technologies Used:
- Verilog HDL
- Xilinx Vivado
- FSM Design
- Digital Logic Design

Simulation:
The design was verified using a Verilog testbench in Vivado simulator.

Sample Simulation Outputs:
- Authentication Verification
- Vote Counting
- Winner Detection
- FSM State Transition


 Future Improvements
- Multiple Voter Database
- Fingerprint Authentication
- LCD/7-Segment Display Interface
- FPGA Hardware Implementation
- Real-Time Vote MonitorinG

Author:
Patta Snehita  
B.Tech EE, NIT DURGAPUR
