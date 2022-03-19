defmodule Wally.Repo do
  use Ecto.Repo,
    otp_app: :wally,
    adapter: Ecto.Adapters.Postgres
end
