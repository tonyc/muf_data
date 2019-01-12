defmodule MufData.Service do
  @http_adapter Application.get_env(:muf_data, __MODULE__)[:http_adapter]

  def fetch_stations() do
    with {:ok, response} <- @http_adapter.get(full_url()),
         {:ok, json} <- Jason.decode(response.body) do
      {:ok, json["stations"]}
    end
  end

  defp full_url() do
    "#{base_url()}/muf.json"
  end

  defp base_url() do
    Application.get_env(:muf_data, __MODULE__)[:base_url]
  end
end
