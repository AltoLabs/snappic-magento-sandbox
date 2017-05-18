defmodule SMS.Mixfile do
  use Mix.Project

  def project do
    [
      app: :snappic_magento_sandbox,
      version: "0.0.1",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      deps: deps(Mix.env)
    ]
  end

  def application do
    [
      mod: {SMS.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps(:test) do
    [] ++ deps(:prod)
  end
  defp deps(:dev) do
    [
      {:mix_test_watch, "~> 0.3"},
      {:dogma, "~> 0.1"},
      {:credo, "~> 0.4"},
      {:dialyxir, "~> 0.4", runtime: false}
    ] ++ deps(:prod)
  end
  defp deps(:prod) do
    [
      {:phoenix, "~> 1.3.0-rc"},
      {:phoenix_pubsub, "~> 1.0"},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},

      {:distillery, "~> 1.2"},
      {:edeliver, "~> 1.4.2"}
    ]
  end

end
