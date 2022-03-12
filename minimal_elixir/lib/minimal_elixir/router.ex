defmodule MinimalElixir.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/bot" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(message()))
  end

  get "/human" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(message_human()))
  end

  defp message do
    %{
      response_type: "in_channel",
      text: "Hello from BOT :)"
    }
  end

  defp message_human do
    %{
      reponse_type: "in_channel",
      text: "Hello human ò.ó"
    }
  end
end
