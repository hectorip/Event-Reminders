defmodule EventReminders.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", EventReminders do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/events", EventController
    resources "/comments", CommentController
    resources "/roles", RoleController
  end

  # Other scopes may use custom stacks.
  # scope "/api", EventReminders do
  #   pipe_through :api
  # end
end
