defmodule Delirium.Repo do
  use Ecto.Repo,
    otp_app: :delirium,
    adapter: Ecto.Adapters.Postgres
end
