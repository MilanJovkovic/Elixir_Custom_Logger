defmodule CustomLogger do
  @behaviour :gen_event
  require Record

  def init(_) do
    {:ok, %{}}
  end

  def handle_event({level, _gl, {Logger, msg, ts, md}}, state) do
    IO.inspect("custom logging; domain: #{inspect(md[:domain])}; #{inspect(msg)}")
    {:ok, state}
  end

end
