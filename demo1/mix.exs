defmodule Demo1.MixProject do
  use Mix.Project

  @app :demo1

  def project do
    [
      app: @app,
      version: "0.1.0",
      elixir: "~> 1.19",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      archives: [mix_gleam: "~> 0.6"],
      compilers: [:gleam | Mix.compilers()],
      aliases: ["deps.get": ["deps.get", "gleam.deps.get"]],
      erlc_paths: ["build/dev/erlang/#{@app}/_gleam_artefacts", "build/dev/erlang/#{@app}/build"],
      erlc_include_path: "build/dev/erlang/#{@app}/include",
      prune_code_paths: false
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:gleam_stdlib, "~> 1.0"},
      {:gleeunit, "~> 1.0", only: [:dev, :test], runtime: false},
      {:friendly_id, "~> 2.1"}
    ]
  end
end
