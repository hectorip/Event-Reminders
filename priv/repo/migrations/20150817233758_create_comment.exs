defmodule EventReminders.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :body, :string
      add :author, :string

      timestamps
    end

  end
end
