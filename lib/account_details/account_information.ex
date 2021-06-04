defmodule SimpleBudgetApp.Account.AccountInformation do
    defstruct [:id, :account_name]
  
    def new(%{id: id, account_name: account_name}) do
      %__MODULE__{id: UUID.uuid4(), account_name: account_name}
    end
  end