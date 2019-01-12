defmodule MufData.Adapters.MockAdapter do
  @sample_data_file "sample_data/muf.json"

  def fetch_stations() do
    with {:ok, file_contents} <- File.read(@sample_data_file),
         {:ok, stations} <- Jason.decode(file_contents) do
      {:ok, stations["stations"]}
    end
  end
end
