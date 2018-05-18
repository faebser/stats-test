defmodule Stats.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :action, :string
      add :domain, :string

      timestamps()
    end

  end
end
