defmodule Myapp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :myapp,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :cowboy, :plug],
      mod: {Myapp, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.1"},
      {:plug, "~> 1.3"},
      {:earmark, "~> 1.2", only: :dev},
      {:ex_doc, "~> 0.18.1", only: :dev},
      {:httpoison, "~> 0.13.0"}
    ]
  end
end
