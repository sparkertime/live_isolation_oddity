defmodule LiveIsolationOddityWeb.LiveParentViewTest do
  use LiveIsolationOddityWeb.ConnCase
  import Phoenix.LiveViewTest

  describe "renders" do
    test "it shows the child on click", %{conn: conn} do
      {:ok, view, _html} =
        conn
        |> live_isolated(LiveIsolationOddityWeb.Views.LiveParentView,
          session: %{"data" => "hello"}
        )

      rendered_result =
        view
        |> element("a[phx-click='show']")
        |> render_click()

      assert rendered_result =~ "Child"
    end
  end
end
