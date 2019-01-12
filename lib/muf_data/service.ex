defmodule MufData.Service do
  def fetch_stations() do
    with {:ok, response} <- http_adapter().get(full_url()),
         {:ok, json} <- Jason.decode(response.body) do
      {:ok, json["stations"]}
    end
  end

  defp full_url() do
    "#{base_url()}/muf.json"
  end

  defp base_url() do
    get_env()[:base_url]
  end

  defp http_adapter() do
    get_env()[:http_adapter]
  end

  defp get_env() do
    Application.get_env(:muf_data, __MODULE__)
  end
end
