defmodule LiveIsolationOddityWeb.PageController do
  use LiveIsolationOddityWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
