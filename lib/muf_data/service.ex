defmodule MufData.Service do
  @service_adapter Application.get_env(:muf_data, :service_adapter)

  def fetch_stations() do
    @service_adapter.fetch_stations()
  end
end
