defmodule PhoenixPolymer.PageController do
  use PhoenixPolymer.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
