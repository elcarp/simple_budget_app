defmodule SimpleBudgetApp.Account.AccountInformation do
    defstruct [:id, :accound_id, :payee, :date, :amount, :category]
  
    def new(%{id: id, accound_id: account_id}) do
      %__MODULE__{id: UUID.uuid4(), accound_id: UUID.uuid4(), payee: payee, date: date, amount: amount, category: category}
    end
  end