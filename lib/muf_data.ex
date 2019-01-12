defmodule MufData do
  def fetch_stations() do
    with {:ok, result} <- HTTPoison.get(full_url()),
         {:ok, stations} <- Jason.decode(result.body) do
      {:ok, stations["stations"]}
    end
  end

  defp full_url() do
    "#{base_url()}/muf.json"
  end

  defp base_url() do
    Application.get_env(:muf_data, :base_url)
  end
end
