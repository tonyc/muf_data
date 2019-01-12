defmodule MufData.Adapters.FakeHTTPAdapter do
  @sample_data_file "sample_data/muf.json"

  # returns a struct with a :body key
  def get(_url, _headers \\ [], _options \\ []) do
    with {:ok, file_contents} <- File.read(@sample_data_file) do
      {:ok, %HTTPoison.Response{body: file_contents}}
    end
  end
end
