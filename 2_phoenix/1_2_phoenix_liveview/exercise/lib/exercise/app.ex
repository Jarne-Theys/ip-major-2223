defmodule Exercise.App do
  def random_int(min, max) do
    :rand.uniform()
    |> Kernel.*(max - min + 1)
    |> Kernel.round()
    |> Kernel.+(min)
  end

end
