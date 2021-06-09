defmodule SimpleBudgetApp.Account.Beneficiary do
  defstruct [:id, :name, :account_number]

  def new(%{name: name, account_number: account_number}) do
    %__MODULE__{id: UUID.uuid4(), name: name, account_number: account_number}
  end

  def transfer(beneficiary, amount, account) do
    balance = SimpleBudgetApp.Account.AccountInformation.check_balance(account)
    case balance > 0 do
      true -> send(amount)
      false -> "Cannot Send"
    end
  end

  defp send(amount) do
    # balance = SimpleBudgetApp.Account.AccountInformation.withdraw(account, amount)
    # subtract balance from existing account - withdraw()
    # show new balance - check_balance() 
  end
end
