# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :presence_test,
  ecto_repos: [PresenceTest.Repo]

# Configures the endpoint
config :presence_test, PresenceTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8Cs/pB93vyz+YAYshLfPd9AINPXLJXCb9l5rlePdUU646OfUkXp0c8aNlfhMcdWU",
  render_errors: [view: PresenceTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PresenceTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
