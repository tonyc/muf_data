use Mix.Config

config :muf_data, MufData.Service, http_adapter: MufData.Adapters.FakeHTTPAdapter
