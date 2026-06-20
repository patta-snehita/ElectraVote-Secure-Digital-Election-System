# 🗳️ ElectraVote

### Secure Digital Election System using Verilog HDL & FSM Architecture

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![FSM](https://img.shields.io/badge/Architecture-FSM-green)
![RTL](https://img.shields.io/badge/Design-RTL-orange)
![Vivado](https://img.shields.io/badge/Tool-Xilinx%20Vivado-red)

---

## 📌 Project Overview

ElectraVote is a secure electronic voting system developed using Verilog HDL and Finite State Machine (FSM) design methodology. The system simulates a complete digital election process by incorporating voter authentication, vote casting, vote protection, automatic vote counting, and winner declaration.

The project demonstrates how digital hardware can be used to build reliable, secure, and efficient election systems suitable for FPGA-based implementations.

---

## 🎯 Key Objectives

| Objective   | Description                                              |
| ----------- | -------------------------------------------------------- |
| Security    | Authenticate users before allowing voting                |
| Integrity   | Ensure only one vote is cast per voter                   |
| Automation  | Automatically count votes and declare results            |
| Reliability | FSM-controlled operation for predictable behavior        |
| Scalability | Designed for FPGA implementation and future enhancements |

---

## ✨ Core Features

| Feature                    | Description                                    |
| -------------------------- | ---------------------------------------------- |
| 🔐 Password Authentication | Validates voters before voting                 |
| 🗳️ Secure Vote Casting    | Allows voting only after authentication        |
| 🚫 Vote Lock Mechanism     | Prevents duplicate voting                      |
| 📊 Automatic Vote Counting | Maintains candidate vote totals                |
| 🏆 Winner Detection        | Identifies the candidate with maximum votes    |
| ⚙️ FSM-Based Control       | Structured and deterministic state transitions |
| 🔄 Reset Support           | Resets the entire election process             |
| 🎯 FPGA Ready              | Synthesizable RTL implementation               |

---

# 🏗️ System Architecture

```text
Idle
  │
  ▼
Authentication
  │
  ▼
Voting
  │
  ▼
Confirmation
  │
  ▼
Result Declaration
```

The entire election workflow is controlled using a Finite State Machine (FSM) to ensure secure and orderly execution.

---

## 🔄 FSM States

| State | Name           | Function                   |
| ----- | -------------- | -------------------------- |
| S0    | Idle           | Waiting for user request   |
| S1    | Authentication | PIN verification           |
| S2    | Voting         | Candidate selection        |
| S3    | Confirmation   | Vote successfully recorded |
| S4    | Result         | Winner determination       |

---

## 📥 Inputs

| Signal | Width | Description             |
| ------ | ----- | ----------------------- |
| clk    | 1-bit | System clock            |
| rst    | 1-bit | System reset            |
| go     | 1-bit | Start voting process    |
| pin    | 4-bit | Authentication PIN      |
| P_1    | 1-bit | Vote Candidate 1        |
| P_2    | 1-bit | Vote Candidate 2        |
| P_3    | 1-bit | Vote Candidate 3        |
| P_4    | 1-bit | Vote Candidate 4        |
| result | 1-bit | Display election result |

---

## 📤 Outputs

| Signal        | Width | Description            |
| ------------- | ----- | ---------------------- |
| pcount_1      | 6-bit | Candidate 1 votes      |
| pcount_2      | 6-bit | Candidate 2 votes      |
| pcount_3      | 6-bit | Candidate 3 votes      |
| pcount_4      | 6-bit | Candidate 4 votes      |
| authenticated | 1-bit | Authentication status  |
| vote_done     | 1-bit | Vote completion status |
| state         | 3-bit | Current FSM state      |
| winner        | 2-bit | Winning candidate      |

---

## ⚙️ Working Flow

### Step 1: Authentication

* User initiates voting using the `go` signal.
* System validates the entered PIN.

### Step 2: Vote Casting

* Authenticated voter selects one candidate.
* Vote count is incremented.

### Step 3: Vote Protection

* Vote is locked immediately after submission.
* Duplicate voting is prevented.

### Step 4: Result Generation

* System compares vote counts.
* Candidate with maximum votes is declared winner.

---

## 🧠 Winner Selection Logic

| Winner Output | Candidate   |
| ------------- | ----------- |
| 00            | Candidate 1 |
| 01            | Candidate 2 |
| 10            | Candidate 3 |
| 11            | Candidate 4 |

---

## 🛠️ Technologies Used

| Category           | Tool / Technology     |
| ------------------ | --------------------- |
| HDL                | Verilog HDL           |
| Design Methodology | FSM Design            |
| Simulation         | Xilinx Vivado         |
| Design Style       | RTL Design            |
| Domain             | Digital System Design |

---

## 📊 Skills Demonstrated

* RTL Design
* FSM Design
* Sequential Logic Design
* Digital Security Concepts
* Verilog HDL Development
* FPGA-Oriented Design
* Hardware Verification
* State Machine Modeling

---

## 🚀 Future Enhancements

| Enhancement              | Benefit                        |
| ------------------------ | ------------------------------ |
| Biometric Authentication | Stronger security              |
| FPGA Deployment          | Real hardware implementation   |
| LCD Display Interface    | Real-time result visualization |
| Voter Database           | Multi-user support             |
| Audit Logging            | Election transparency          |
| Web Dashboard            | Remote monitoring              |

---

## 🎓 Learning Outcomes

This project strengthened my understanding of:

✔ Finite State Machines (FSM)

✔ Verilog HDL Coding

✔ Sequential & Combinational Logic

✔ Digital Security Mechanisms

✔ RTL Design Methodology

✔ FPGA-Based System Development

---

### Developed by

**Patta Snehita**

Electrical Engineering

RTL Design | FPGA | Digital Design | VLSI Enthusiast
