defmodule PresenceTestWeb.PageController do
  use PresenceTestWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
