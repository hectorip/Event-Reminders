defmodule PhoenixPolymer.PageController do
  use PhoenixPolymer.Web, :controller

  def index(conn, _params) do
    params = %{title: "Welcome!"}
    render conn, "index.html", params
  end
end
