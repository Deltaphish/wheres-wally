defmodule WallyWeb.IndexController do
  use WallyWeb, :controller

  alias Wally.Events

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
