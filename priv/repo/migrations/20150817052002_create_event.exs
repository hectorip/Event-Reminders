defmodule EventReminders.Repo.Migrations.CreateEvent do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :description, :text
      add :participants, :integer

      timestamps
    end

  end
end
