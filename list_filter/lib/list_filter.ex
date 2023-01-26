defmodule ListFilter do

  def call([]), do: 0

  def call list do
    list
    |> Enum.filter(fn v -> Regex.match?(~r/^[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)$/, v) end)
    |> Enum.map(&parse/1)
    |> Enum.filter(fn v -> rem(v, 2) != 0 end)
    |> length
  end

  defp parse str do
    case Integer.parse str do
      :error -> 0
      {val, ""} -> val
      {_, _} -> 1
    end
  end

end
