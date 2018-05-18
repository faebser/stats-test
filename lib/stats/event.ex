defmodule Stats.Event do
  use Ecto.Schema
  import Ecto.Changeset


  schema "events" do
    field :action, :string
    field :domain, :string

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:action, :domain])
    |> validate_required([:action, :domain])
  end
end
