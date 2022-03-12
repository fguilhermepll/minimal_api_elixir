defmodule MinimalElixir.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/apple" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(message_apple()))
  end

  get "/orange" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(message_orange()))
  end

  defp message_apple do
    %{
      response_type: "in_channel",
      text: "Hello from apples :)"
    }
  end

  defp message_orange do
    %{
      reponse_type: "in_channel",
      text: "Hello from oranges"
    }
  end
end
