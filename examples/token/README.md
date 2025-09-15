# Token Example

ERC20 token operations with Anoma SDK.

## Features

- Token creation
- Transfer between accounts
- Balance queries

## Usage

cd examples/token
mix deps.get
mix run token.ex

## Code

defmodule Token do
  alias AnomaSDK.Transaction
  
  def create(name, symbol, supply) do
    Transaction.create(%{
      type: :token,
      name: name,
      symbol: symbol,
      supply: supply
    })
  end
  
  def transfer(token, to, amount) do
    Transaction.transfer(token, to, amount)
  end
end
