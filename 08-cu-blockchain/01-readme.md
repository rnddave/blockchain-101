# Intro

- [GitHub resource](https://github.com/Cyfrin/foundry-full-course-f23)
- [Updates in chronological order](https://github.com/Cyfrin/foundry-full-course-f23/blob/main/chronological-updates.md)
- [walk-thru of block transactions](https://andersbrownworth.com/blockchain/)
- [Keys and signing](https://andersbrownworth.com/blockchain/public-private-keys/)


## Smart Contracts

- Trust Minimised Agreements
  - meaning the amount we need to trust 'someone' is minimised
- Unbreakable Promises
  - meaning - we don't need to worry about trusting them, because they can't break the promise anyway

- Immutable
- Unbreakable
- Transparent
- Decentralised

## Purpose of a smart contract



---

## Layer 2's

- optimistic rollups
- zero knowledge rollup  

---

### Transaction Fee 

**Transaction Fee** = Gas Used x Gas Price 

---

# How do we trust blockchains?

We uses consesnus protocols. 

### Sybil Resistence Mechanism

Defines a way to prove who is the Block Auther. Allows a blockchain to prevent peers creating fake blockchains. By making it 'expensive' to be a node, it helps prevent someone else from making a huge amount of nodes to gain control of the network. This 'expense' doesn't just mean cash, it can be computationally expensive as well.

- Proof of Work
- Proof of Stake 

### Chain Selection Algorithm

Which blockchain is the real/true blockchain

- Nakamoto Consensus
  - which one is the longest chain
  - most number of blocks on it

# Attacking the Blockchain

Difficult in both PoW and PoS chains. The bigger a blockchain is, the harder it is to successfully attack, mostly because it increases the decentralisation. 

## Sybil attack
- creates a bunch of pseudo anonymous accounts 
- try to manipulate the blockchain 
- try to trick the blockchain into thinking they are multiple different people

## 51% attack 
- we trust the longest chain
- **as long as** it matches up with at least 51% of the rest of the network 
- This means that if you have longest chain and **control** more than 51% of the network, you can basically fork the chain

---

# Miners vs Validators

## Miner

- Proof of Work
- Computationally expensive

## Validator

- Proof of Stake 
- no longer mining
- acting as the 'watchers' to make sure everyone else is playing by the same rules 
