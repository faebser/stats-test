defmodule StatsWeb.Router do
  use StatsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", StatsWeb do
    # pipe_through :browser # Use the default browser stack

    get "/stats", PageController, :index
    post "/stats", PageController, :post_event
  end

  # Other scopes may use custom stacks.
  # scope "/api", StatsWeb do
  #   pipe_through :api
  # end
end
