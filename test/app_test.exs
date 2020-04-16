defmodule AppTest do
  use ExUnit.Case
  doctest App

  test "greets the world" do
    1 / 0
    assert App.hello() == :world
  end
end
