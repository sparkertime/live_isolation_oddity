defmodule LiveIsolationOddityWeb.PageController do
  use LiveIsolationOddityWeb, :controller

  def index(conn, _params) do
    conn
    |> put_session(:data, "data")
    |> render("index.html")
  end
end
