defmodule Wally.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :game, :string
    field :start_time, :naive_datetime
    field :people, {:array, :string}

    timestamps()
  end

  def changeset(item, params) do
    item
    |> cast(params, [:game, :start_time, :people])
  end

end
