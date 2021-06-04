defmodule SimpleBudgetAppTest do
  use ExUnit.Case
  doctest SimpleBudgetApp

  test "greets the world" do
    assert SimpleBudgetApp.hello() == :world
  end
end
