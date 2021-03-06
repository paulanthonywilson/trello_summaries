defmodule TrelloSummaries.Mixfile do
  use Mix.Project

  def project do
    [app: :trello_summaries,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {TrelloSummaries, []},
     applications: [:phoenix, :cowboy, :logger, :jsx, :httpoison]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, github: "phoenixframework/phoenix"},
     {:cowboy, "~> 1.0"},
     {:daily_trello, github: "CultivateHQ/daily_trello"},
   ]
  end
end
