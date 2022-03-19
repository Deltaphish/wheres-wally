defmodule Wally.Events do
  alias Wally.Events.Event
  alias Wally.Repo
  import Ecto.Query

  def get_event(id) do
    Repo.get(Event, id)
  end

  def list_events() do
    query = Event |> order_by(desc: :start_time)
    Repo.all(query)
  end

  def delete_event(id) do
    event = Repo.get(Event, id)
    Repo.delete(event)
  end

  def create_event(params) do
    %Event{}
    |> Event.changeset(params)
    |> Repo.insert()
  end

  def add_person(id, name) do
    event = Repo.get(Event, id)
    event = Ecto.Changeset.change event, people: [name | event.people]
    Repo.update(event)
  end

end
