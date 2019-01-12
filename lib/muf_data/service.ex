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
    get_config(:base_url)
  end

  defp http_adapter() do
    get_config(:http_adapter)
  end

  defp get_config(name) do
    Application.get_env(:muf_data, __MODULE__)[name]
  end
end
