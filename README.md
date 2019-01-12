# MufData

Wrapper package for maximum usable frequency (MUF) data API.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `muf_data` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:muf_data, "~> 0.1.0"}
  ]
end
```

## Configuration

The MufData.Service module needs up to two configuration settings, e.g.:

    config :muf_data, MufData.Service,
      http_adapter: HTTPoison,
      base_url: "https://host"

+http_adapter+ is the name of a module that responds to get/3, (i.e. uses the HTTPoison API)

+base_url+ is the url to the host running the API, e.g. `https://hostname` -- without a trailing slash or path.

You can configure the MUF API Base url from ENV, e.g.:

    MUF_DATA_API_BASE=https://url_to_api_host

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm).

