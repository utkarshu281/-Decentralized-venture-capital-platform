# Decentralized Venture Capital (DVC) - Move Module

## Description
The **Decentralized Venture Capital (DVC)** module is a **smart contract** built on the **Aptos blockchain**. It enables startups to raise funds in a **trustless** and **transparent** manner by allowing investors to contribute toward funding goals securely. The contract ensures that investments meet minimum thresholds and maintains a ledger of investors and their contributions.

## Vision
The vision of **DVC** is to create a **decentralized, transparent, and efficient** funding mechanism for startups. By leveraging blockchain technology, this project aims to:

- **Eliminate intermediaries** in the venture capital process.
- **Ensure transparency** in startup funding.
- **Empower investors** with full control over their contributions.
- **Promote innovation** by making funding accessible to a global audience.

## Features
- **Startup fundraising** via blockchain.
- **Minimum investment enforcement**.
- **Secure transactions using AptosCoin**.
- **Investor contribution tracking**.
- **No intermediaries for investments**.

## Future Scope
This module is an initial step towards a fully decentralized venture capital ecosystem. Future enhancements may include:

- **Automated refunds** if funding goals are not met.
- **Tokenization of investments** to allow investors to trade their stakes.
- **Multi-currency support** for diversified investments.
- **DAO Governance Integration** for community-driven investment decisions.
- **Smart contract auditing tools** for security and compliance.

## Contract Details
The module consists of two primary functions:

### **1. create_investment_opportunity(founder, goal, min_investment)**
- Allows startup founders to create an investment opportunity.
- Stores **funding goals** and **minimum investment** requirements.

### **2. invest(investor, founder_addr, amount)**
- Enables investors to fund a startup.
- Ensures investments meet the **minimum threshold**.
- Transfers **AptosCoin** from investors to the founder.
- Updates investor contributions in a **ledger**.

## Installation & Usage

### **Prerequisites**
- Install [Aptos CLI](https://aptos.dev/cli-tools/aptos-cli/).
- Set up an **Aptos development environment**.

### **Compile & Deploy**
Run the following commands to compile and deploy the Move module:
```sh
aptos move compile
aptos move publish --profile default
```

## **Contributing**
Contributions are welcome! Feel free to **open an issue** or **submit a pull request** if you have suggestions or improvements.

## **Contract address**
0xc5a2dfffb1225662f7c9adf4e5bae237c8ea2f46bf375a417947376662fade7c

![image](https://github.com/user-attachments/assets/c9416ac0-f63e-4688-90e5-d9224d1fdc5b)
