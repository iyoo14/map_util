# MapUtil

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add map_util to your list of dependencies in `mix.exs`:

        def deps do
          [{:map_util, "~> 0.0.1"}]
        end

  2. Ensure map_util is started before your application:

        def application do
          [applications: [:map_util]]
        end

## Example
$ iex -S mix
iex(1)> lst = :lists.duplicate(10,27)
iex(2)> MapUtil.Server.pmap(&MapUtil.Fib.fibt_calc/1, lst)
