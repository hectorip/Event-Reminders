# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :eventreminders,
  ecto_repos: [Eventreminders.Repo]

# Configures the endpoint
config :eventreminders, Eventreminders.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cQA4V7wuEKeN0o7R3fPw0bioVz1iNUF4ylWy1gW2lCMjfdvLMiNiyyIGeLKKaEVP",
  render_errors: [view: Eventreminders.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Eventreminders.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
