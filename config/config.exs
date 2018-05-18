# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :stats,
  ecto_repos: [Stats.Repo]

# Configures the endpoint
config :stats, StatsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "io0MeCEJYtAk4Q/XUAoB5ksa5hK8THX7fi9NN9VTSPOLvyec/HXFk/dzAQIKOLoV",
  render_errors: [view: StatsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Stats.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
