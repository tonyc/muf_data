defmodule MufData.ServiceTest do
  use ExUnit.Case

  test "picks out the stations key from the returned JSON" do
    {:ok, stations} = MufData.Service.fetch_stations()
    
    assert Enum.count(stations) == 78

    wallops = stations
    |> Enum.find(fn(s) -> s["name"] == "Wallops" end)

    assert wallops["muf_mhz"] == 19.012
    assert wallops["timestamp"] == "2019-01-12T17:10:00Z"
  end
end
