defmodule WallyWeb.PageController do
  use WallyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
