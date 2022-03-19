defmodule WallyWeb.EventsLive do
  use Phoenix.LiveView

  alias Wally.Events

  def mount(_params, session, socket) do
    {:ok, assign(socket, events: Events.list_events())}
  end

  def render(assigns) do
    ~H"""
    <h2> Currently looking for players: </h2>
    <%= if @events == [] do %>
        <h3> No games are planned right now, would you like to add one? </h3>
    <% else %>
        <%= for event <- @events do %>
            <h3><%= event.game %></h3>
        <% end %>
    <% end %>
    """
  end
end
