import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :exercise, ExerciseWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "B8UMpq2wZARAkuz/9HhGDKDJ3BWfYfJDsrrSLqNElA6p5ybu1ZvGZW2j57tdGgFJ",
  server: false

# In test we don't send emails.
config :exercise, Exercise.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
