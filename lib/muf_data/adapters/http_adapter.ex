defmodule MufData.Adapters.HttpAdapter do
  def fetch_stations() do
    with {:ok, response} <- HTTPoison.get(full_url()),
         {:ok, json} <- Jason.decode(response.body) do
      {:ok, json["stations"]}
    end
  end

  defp full_url() do
    "#{base_url()}/muf.json"
  end

  defp base_url() do
    Application.get_env(:muf_data, :base_url)
  end
end
