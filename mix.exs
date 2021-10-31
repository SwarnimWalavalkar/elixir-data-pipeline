defmodule DataPipeline.MixProject do
  use Mix.Project

  def project do
    [
      app: :data_pipeline,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {DataPipeline.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 0.10.0"},
      {:hackney, github: "benoitc/hackney", override: true},
      {:json, "~> 1.0.0"},
      {:broadway_rabbitmq, "~> 0.6.0"}
    ]
  end
end
