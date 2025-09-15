# NFT Example

NFT minting and trading with Anoma SDK.

## Features

- NFT creation
- Minting to addresses
- Transfer between owners

## Usage

cd examples/nft
mix deps.get
mix run nft.ex

## Code

defmodule NFT do
  alias AnomaSDK.Transaction
  
  def create(name, uri) do
    Transaction.create(%{
      type: :nft,
      name: name,
      uri: uri
    })
  end
  
  def mint(nft, to_address) do
    Transaction.mint(nft, to_address)
  end
  
  def transfer(nft, from, to) do
    Transaction.transfer(nft, from, to)
  end
end
