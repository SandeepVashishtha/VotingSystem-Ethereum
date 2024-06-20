# Voting System on Ethereum

A simple, decentralized voting system implemented as a smart contract on the Ethereum blockchain. This project demonstrates the creation, voting, and cancellation of polls in a trustless environment.

## Description

The Voting System smart contract allows users to interact with polls in various ways: creating polls with custom questions, voting on polls with a simple yes or no answer, and allowing the contract owner to cancel polls. It's built using Solidity and showcases fundamental concepts of Ethereum smart contract development, including state management, mappings, structs, event logging, and access control.

## Executing program

To run this program, you can use Remix, an online Solidity IDE. Follow these steps:

1. Go to the Remix website at [https://remix.ethereum.org/](https://remix.ethereum.org/).
2. Create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a `.sol` extension (e.g., `VotingSystem.sol`).
3. Copy and paste the provided Solidity code into the file.
4. To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to a compatible version (e.g., "0.8.18"), and then click on the "Compile VotingSystem.sol" button.
5. Once the code is compiled, deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "VotingSystem" contract from the dropdown menu, and then click on the "Deploy" button.
6. After deploying, you can interact with the contract by calling its functions such as creating polls, voting, and cancelling polls. Select the deployed "VotingSystem" contract in the left-hand sidebar to see these functions and interact with them.

## Authors

- Sandeep Vashishtha

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
