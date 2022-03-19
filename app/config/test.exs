import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :wally, Wally.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "wally_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wally, WallyWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "6efGo7DQdwR7r0C1VY+9JXkDyI0aa0dQYjL7/UC5ja7UIdAMEPz1Qg9t3EoKivKw",
  server: false

# In test we don't send emails.
config :wally, Wally.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
