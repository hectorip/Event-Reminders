defmodule Eventreminders.PageController do
  use Eventreminders.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
