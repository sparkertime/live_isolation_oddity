defmodule LiveIsolationOddityWeb.Views.LiveChildView do
  use LiveIsolationOddityWeb, :live_view

  def render(assigns) do
    ~H"""
      <div>
        <h2>I'm a child</h2>
        <span>session data: <%= assigns[:data_from_session] %></span>
      </div>
    """
  end

  def mount(_params, %{"data" => data}, socket) do
    socket = assign(socket, data_from_session: data)
    {:ok, socket}
  end
end
