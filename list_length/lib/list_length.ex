defmodule ListLength do
  def call list do len list, 0 end

  defp len [], acc do acc end

  defp len [_ | tail], acc do
    len tail, acc + 1
  end
end
