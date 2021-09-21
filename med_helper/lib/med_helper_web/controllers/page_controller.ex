defmodule MedHelperWeb.PageController do
  use MedHelperWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
