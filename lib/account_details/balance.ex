defmodule SimpleBudgetApp.Account.Balance do
    defstruct [:amount, :currency]
  
    def new(%{amount: amount, currency: currency}) do
      %__MODULE__{amount: amount, currency: currency}
    end
  end