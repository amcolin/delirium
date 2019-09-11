defmodule Delirium.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :author, :string
    field :description, :string
    field :likes, :integer
    field :title, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :url, :author, :description, :likes])
    |> validate_required([:title, :url, :author, :description, :likes])
  end
end
