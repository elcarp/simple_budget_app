defmodule SimpleBudgetApp.Account.Transaction do
  def deposit(account, amount) do
    %{account | balance: account.balance + amount}
  end

  def withdraw(account, amount) do
    %{account | balance: account.balance - amount}
  end
end
