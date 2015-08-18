defmodule EventReminders.EventTest do
  use EventReminders.ModelCase

  alias EventReminders.Event

  @valid_attrs %{description: "some content", participants: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Event.changeset(%Event{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Event.changeset(%Event{}, @invalid_attrs)
    refute changeset.valid?
  end
end
