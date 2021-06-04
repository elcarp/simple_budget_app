defmodule SimpleBudgetApp.Account.AccountInformation do
  defstruct [:id, :account_name, balance: 0]

  def new(%{account_name: account_name}) do
    %__MODULE__{id: UUID.uuid4(), account_name: account_name}
  end

  def check_balance(account) do
    account.balance
  end
end
