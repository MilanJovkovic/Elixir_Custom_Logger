defmodule App do
  use Application
  require Logger

  def start(_type, _args) do
    Logger.info "starting"

    # this will crash
    1 / 0

    {:ok, self()}
  end

end
