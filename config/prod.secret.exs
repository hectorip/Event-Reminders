use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :event_reminders, EventReminders.Endpoint,
  secret_key_base: "bsaB3IVWUg66gmKjdp5gJfGP341qWqnNfwzKQOoJrPzELYc7A3iBr5U5rV945uMh"

# Configure your database
config :event_reminders, EventReminders.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "event_reminders_prod"
