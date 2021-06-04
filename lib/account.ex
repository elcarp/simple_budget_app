defmodule SimpleBudgetApp.Account do
  defdelegate new_account(params),
    to: __MODULE__.Account,
    as: :new

  defdelegate new_transaction(params),
    to: __MODULE__.Transaction,
    as: :new
end
