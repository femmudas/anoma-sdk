defmodule AnomaSDKTest do
  use ExUnit.Case
  doctest AnomaSDK

  test "creates transaction successfully" do
    params = %{
      from: "0x1234567890123456789012345678901234567890",
      to: "0x0987654321098765432109876543210987654321",
      amount: 100
    }
    
    assert {:ok, _tx} = AnomaSDK.Transaction.create(params)
  end

  test "fails with invalid parameters" do
    assert {:error, _} = AnomaSDK.Transaction.create(%{})
  end

  test "signs transaction with private key" do
    params = %{from: "0x123...", to: "0x456...", amount: 100}
    {:ok, tx} = AnomaSDK.Transaction.create(params)
    private_key = "0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"
    
    assert {:ok, _signed} = AnomaSDK.Transaction.sign(tx, private_key)
  end
end
