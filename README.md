# Anoma SDK 🚀

The official Anoma SDK for building intent-centric decentralized applications in Elixir.

## ✨ Features

- Intent-centric transaction creation
- Zero-knowledge proof integration
- Multi-chain support
- Type-safe Elixir API
- Comprehensive examples

## 📦 Installation

Add to your `mix.exs`:
{:anoma_sdk, github: "anoma/anoma-sdk"}

Run: mix deps.get

## 🚀 Quick Start

Create transaction:
{:ok, tx} = AnomaSDK.Transaction.create(%{from: "0x123...", to: "0x456...", amount: 100})

Sign and submit:
{:ok, signed} = AnomaSDK.Transaction.sign(tx, private_key)
{:ok, hash} = AnomaSDK.Transaction.submit(signed)

## ⚙️ Configuration

Create .env file:
export API_KEY_ALCHEMY="your-alchemy-api-key"
export PRIVATE_KEY="your-private-key"
export RISC0_DEV_MODE="true"

## 📚 Examples

examples/counter - State machine example
examples/token - ERC20 token operations
examples/nft - NFT minting and trading
examples/defi - DeFi protocols

## 🔧 API Reference

Full documentation: https://hexdocs.pm/anoma_sdk

## 🤝 Contributing

See CONTRIBUTING.md for guidelines.
