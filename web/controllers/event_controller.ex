defmodule EventReminders.EventController do
  use EventReminders.Web, :controller

  alias EventReminders.Event

  plug :scrub_params, "event" when action in [:create, :update]
  plug :action

  def index(conn, _params) do
    events = Repo.all(Event)
    render(conn, "index.html", events: events)
  end

  def new(conn, _params) do
    changeset = Event.changeset(%Event{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"event" => event_params}) do
    changeset = Event.changeset(%Event{}, event_params)

    if changeset.valid? do
      Repo.insert(changeset)

      conn
      |> put_flash(:info, "Event created successfully.")
      |> redirect(to: event_path(conn, :index))
    else
      render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    event = Repo.get(Event, id)
    render(conn, "show.html", event: event)
  end

  def edit(conn, %{"id" => id}) do
    event = Repo.get(Event, id)
    changeset = Event.changeset(event)
    render(conn, "edit.html", event: event, changeset: changeset)
  end

  def update(conn, %{"id" => id, "event" => event_params}) do
    event = Repo.get(Event, id)
    changeset = Event.changeset(event, event_params)

    if changeset.valid? do
      Repo.update(changeset)

      conn
      |> put_flash(:info, "Event updated successfully.")
      |> redirect(to: event_path(conn, :index))
    else
      render(conn, "edit.html", event: event, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    event = Repo.get(Event, id)
    Repo.delete(event)

    conn
    |> put_flash(:info, "Event deleted successfully.")
    |> redirect(to: event_path(conn, :index))
  end
end
