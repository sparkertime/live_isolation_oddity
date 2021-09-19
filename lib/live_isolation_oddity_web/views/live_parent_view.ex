defmodule LiveIsolationOddityWeb.Views.LiveParentView do
  use LiveIsolationOddityWeb, :live_view

  def render(assigns) do
    ~H"""
      <div>
        <h1>I'm a parent</h1>
        <span>session data: <%= assigns[:data_from_session] %></span>
        <a style="display: block;" phx-click="show">Show child</a>
        <%= if assigns[:render_child?] do %>
          <%= live_render(@socket, LiveIsolationOddityWeb.Views.LiveChildView, id: :live_child) %>
        <% end %>
      </div>
    """
  end

  def mount(_params, %{"data" => data}, socket) do
    socket = assign(socket, data_from_session: data, render_child?: false)
    {:ok, socket}
  end

  def handle_event("show", _params, socket) do
    {:noreply, assign(socket, render_child?: true)}
  end
end
