defmodule StatsWeb.PageController do
  use StatsWeb, :controller
  alias Stats.{Repo, Event}

  def index(conn, _params) do
    render conn, "index.html"
  end

  def post_event(conn, %{"action" => action, "domain" => domain}) do
    event = %Event{action: action, domain: domain}
  	Repo.insert event
  	text conn, "ok" 
  end

  def post_event(conn, _) do
    text conn, "not okay"
  end
end
