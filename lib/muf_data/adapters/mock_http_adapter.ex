defmodule MufData.Adapters.MockHttpAdapter do
  def fetch_stations() do
    with {:ok, file_contents} <- File.read("test/sample_data/muf.json"),
         {:ok, stations} = Jason.decode(file_contents) do
      {:ok, stations["stations"]}
    end
  end
end
