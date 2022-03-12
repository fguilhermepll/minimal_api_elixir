defmodule MinimalElixir.Application do

  use Application

  alias MinimalElixir.Endpoint
  def start(_type, _args) do
    Supervisor.start_link(children(), opts())
  end

  defp children do
    [
      Endpoint
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name: MinimalServer.Supervisor
    ]
  end  
end
