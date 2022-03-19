defmodule WallyWeb.EventsController do
  use WallyWeb, :controller

  alias Wally.Events

  def index(conn, _params) do
    events = Events.list_events()
    render(conn, "index.html", events: events)
  end
end
