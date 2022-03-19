defmodule Wally.Repo.Migrations.AddEvent do
  use Ecto.Migration

  def change do
    create table (:events) do
      add :game, :string
      add :start_time, :naive_datetime
      add :people, {:array, :string}

      timestamps()
    end
  end
end
