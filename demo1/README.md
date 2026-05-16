# Demo 1: using [mix_gleam](https://github.com/gleam-lang/mix_gleam)

make sure you have elixir and gleam installed (.tool-versions file included)

first we install mix_gleam

```bash
  mix archive.install hex mix_gleam
```

now we add a few things to our `mix.exs` file

```elixir
def project do
    [
      # ...
      archives: [mix_gleam: "~> 0.6"],
      compilers: [:gleam | Mix.compilers()],
      aliases: ["deps.get": ["deps.get", "gleam.deps.get"]],
      erlc_paths: ["build/dev/erlang/#{@app}/_gleam_artefacts"],
      erlc_include_path: "build/dev/erlang/#{@app}/include",
      prune_code_paths: false
    ]
```

we'll probably be needing the gleam std library and gleeunit for tests

```elixir
defp deps do
    [
      # ...
      {:gleam_stdlib, "~> 1.0"},
      {:gleeunit, "~> 1.0", only: [:dev, :test], runtime: false},
    ]
  end
```

our gleam code will go into a `src/`