🪪 Blockchain Certificate Issuer (Ethereum + MetaMask)

A decentralized application (DApp) that allows educational institutions to issue and verify certificates securely on the Ethereum blockchain.
Built with Solidity, Remix IDE, and MetaMask, this project ensures transparency, immutability, and authenticity of digital certificates.

🚀 Features

🧾 Issue Certificates: Only the authorized issuer (contract owner) can issue certificates.

🔍 Verify Certificates: Anyone can verify a certificate’s authenticity using its unique ID.

🔒 Tamper-Proof Data: Once issued, certificate data cannot be modified.

🌐 MetaMask Integration: All blockchain interactions are signed securely through MetaMask.

🧱 Deployed on Ethereum Sepolia Testnet (using test ETH).

🧰 Tech Stack
Tool	Purpose
Solidity (v0.8.20)	Smart contract language
Remix IDE	Contract development & deployment
MetaMask	Ethereum wallet for transaction signing
Sepolia Testnet	Ethereum test network
Etherscan	Transaction and contract verification
⚙️ Steps to Run Locally
1️⃣ Set Up MetaMask

Install MetaMask browser extension → https://metamask.io

Create a wallet (save your recovery phrase securely!)

Enable Show test networks in Settings → Advanced

Switch to Sepolia Test Network

2️⃣ Get Test ETH

Go to https://sepoliafaucet.com

Paste your wallet address → request free test ETH

3️⃣ Deploy Contract

Open Remix IDE

Create a new file named EduCert.sol

Paste the smart contract code above

Compile (Solidity version ^0.8.20)

Go to Deploy & Run Transactions tab

Select Injected Provider – MetaMask as environment

Click Deploy → confirm in MetaMask

4️⃣ Interact with the Contract

Expand your deployed contract

Use:

issueCertificate("Nandini Ghosh", "Blockchain Fundamentals", "18-10-2025")

Then call getCertificate(1) to view it
🌐 View on Etherscan

After deployment:

Copy your contract address

Visit https://sepolia.etherscan.io/

Paste the address to view all transactions and contract details

📦 Future Enhancements

Web frontend using Ethers.js / Web3.js

Integration with IPFS for certificate file storage

Role-based access control for multiple issuers

QR code generation for easy verification
