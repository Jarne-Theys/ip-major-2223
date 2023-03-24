import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :exercise, ExerciseWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "3VfNfmuP/4Zbausj5Ft32z4D2uB3j96WHfkSujPIHY6m/6c/VXCQvD6oS6SY6fZH",
  server: false

# In test we don't send emails.
config :exercise, Exercise.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
