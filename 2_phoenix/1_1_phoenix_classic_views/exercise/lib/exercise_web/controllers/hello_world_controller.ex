defmodule ExerciseWeb.HelloWorldController do
  use ExerciseWeb, :controller

  def index(conn, _params) do
    render(conn, "hello_world.html")
  end
end
