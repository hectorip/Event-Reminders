use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :phoenix_polymer, PhoenixPolymer.Endpoint,
  secret_key_base: "AFLl9kowZKqY5hFvtuO0bZGEcqIwya7W1NKZwRASSENkBH+YJyLAejjgjEm7HXbT"

# Configure your database
config :phoenix_polymer, PhoenixPolymer.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "phoenix_polymer_prod",
  size: 20 # The amount of database connections in the pool
