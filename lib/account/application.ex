defmodule SimpleBudgetApp.Account.Application do
    # See https://hexdocs.pm/elixir/Application.html
    # for more information on OTP Applications
    @moduledoc false
  
    use Application
  
    @impl true
    def start(_type, _args) do
      children = [
        {SimpleBudgetApp.Account.Balance, 0}
        # Starts a worker by calling: Stateful.Worker.start_link(arg)
        # {Stateful.Worker, arg}
      ]
  
      # See https://hexdocs.pm/elixir/Supervisor.html
      # for other strategies and supported options
      opts = [strategy: :one_for_one, name: SimpleBudgetApp.Account.Supervisor]
      Supervisor.start_link(children, opts)
    end
  end
  