defmodule MufData.ServiceTest do
  use ExUnit.Case

  test "picks out the stations key from the returned JSON" do
    {:ok, stations} = MufData.Service.fetch_stations()

    assert Enum.count(stations) == 78

    station = find_station_by_name(stations, "Wallops")

    assert station["name"] == "Wallops"
    assert station["muf_mhz"] == 19.012
    assert station["timestamp"] == "2019-01-12T17:10:00Z"
  end

  defp find_station_by_name(stations, name) do
    stations
    |> Enum.find(fn s -> s["name"] == name end)
  end
end
