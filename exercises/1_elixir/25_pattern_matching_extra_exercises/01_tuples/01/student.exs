defmodule Cards do
  defp numericValue(k) when is_number(k), do: k
  defp numericValue(:jack), do: 11
  defp numericValue(:queen), do: 12
  defp numericValue(:king), do: 13
  defp numericValue(:ace), do: 14
  def higher?({value1, suit}, {value2, suit}, _) do numericValue(value1) > numericValue(value2)
  end
  def higher?({_,suit1}, {_,suit2}, suit2) when suit1 != suit2 ,do: false
  def higher?({_,_}, {_,_}, _) ,do: true
end