# Counter Example

Simple counter application using Anoma SDK.

## Overview

This example demonstrates state management with resources, transaction creation and proof generation.

## Running

cd examples/counter
mix deps.get
mix run counter.ex

## Code

defmodule Counter do
  alias AnomaSDK.Transaction
  
  def create(initial_value) do
    Transaction.create(%{
      type: :counter,
      value: initial_value
    })
  end
  
  def increment(counter) do
    Transaction.update(counter, %{value: counter.value + 1})
  end
end
