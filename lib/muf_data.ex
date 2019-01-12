defmodule MufData do
  def fetch_stations() do
    with {:ok, result} <- HTTPoison.get
  end
end
