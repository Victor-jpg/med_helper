# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :med_helper,
  ecto_repos: [MedHelper.Repo]

# Configures the endpoint
config :med_helper, MedHelperWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KjoyvS+LmVbFwZxE6jSbFVNY/NWYmEk7LRsnwhFRlf/iy4bFAIXs9yJdVGiZvONG",
  render_errors: [view: MedHelperWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: MedHelper.PubSub,
  live_view: [signing_salt: "fF/62DSV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
