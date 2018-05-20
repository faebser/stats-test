defmodule StatsWeb.PageController do
  use StatsWeb, :controller
  alias Stats.{Repo, Event}

  def index(conn, _params) do
    render conn, "index.html"
  end

  def post_event(conn, params) do
  	IO.inspect params
    action = params[:action]
    domain = params[:domain]
    event = %Event{action: action, domain: domain}
    IO.inspect event
  	Repo.insert event
  	render conn, "ok.html" 
  end
end
