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
    <div class="flex mx-auto flex-col w-4/5 max-w-screen-md">
        <%= for event <- @events do %>
            <div class="grid my-0.5 bg-red-700 grid-cols-4 grid-rows-2 grid">
              <p class="mx-auto row-start-1 col-start-1 col-end-4 text-2xl"><%= event.game %></p>
              <p class="mx-auto row-start-1 col-start-4 text-2xl">2 / 8</p>
              <p class="mx-auto row-start-2 col-start-1 col-end-2"> 03/22 </p>
              <p class="mx-auto row-start-2 col-start-2 col-end-3"> 18:00 </p>
              <a href="/" class="mx-auto row-start-2 col-start-4"> more >> </a>
            </div>
        <% end %>
    </div>
    <% end %>
    """
  end
end
