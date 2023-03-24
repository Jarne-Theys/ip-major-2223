alias Exercise.App
defmodule ExerciseWeb.HelloWorld do
  use Phoenix.LiveView

  def mount(_params, _session, socket), do: { :ok, assign(socket, :number, App.random_int()) }

  def render(assigns) do
    ~H"""
    <h1> --------- Hello World ------------- </h1>
    <p> <%= @number %>  </p>
    """
  end

end
