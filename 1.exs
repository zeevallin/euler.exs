defmodule Euler.Problem1 do

  @moduledoc"""
    http://projecteuler.net/problem=1

    If we list all the natural numbers below 10 that are multiples
    of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

    Find the sum of all the multiples of 3 or 5 below 1000.
  """

  @doc"""
  ## Examples

    iex> Euler.Problem1.solve(10)
    23

    iex> Euler.Problem1.solve(1000)
    233168

  """
  def solve(limit) do
    Enum.sum Enum.filter 1..(limit - 1), fn(i) ->
      cond do
        rem(i, 5) == 0 -> true
        rem(i, 3) == 0 -> true
        true -> false
      end
    end
  end

end