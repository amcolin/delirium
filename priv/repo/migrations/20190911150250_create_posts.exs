defmodule Delirium.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :url, :string
      add :author, :string
      add :description, :string
      add :likes, :integer

      timestamps()
    end

  end
end
