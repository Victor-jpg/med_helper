defmodule MedHelper.Repo do
  use Ecto.Repo,
    otp_app: :med_helper,
    adapter: Ecto.Adapters.Postgres
end
