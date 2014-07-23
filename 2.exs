require Integer

defmodule Euler.Problem2 do

  @moduledoc"""
    http://projecteuler.net/problem=2

    Each new term in the Fibonacci sequence is generated
    by adding the previous two terms.

    By considering the terms in the Fibonacci sequence
    whose values do not exceed four million, find the
    sum of the even-valued terms.
  """

  @doc"""
  Solves euler problem 2

  ## Examples

    iex> Euler.Problem2.solve(4_000_000)
    4613732

  """
  def solve limit do
    Enum.sum Enum.filter numbers_up_to(limit), &Integer.even?(&1)
  end

  def numbers_up_to limit do
    fib
      |> Enum.take_while fn n  -> n < limit end
  end

  @doc"""
    Lazy fibbonaci sequence borrwed from:
    https://github.com/seven1m/30-days-of-elixir/blob/master/24-stream.exs

  ## Examples

    iex> Euler.Problem2.fib |> Enum.take(10)
    [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

  """
  def fib do
    Stream.unfold {0, 1}, fn {a, b} -> {a, {b, a + b}} end
  end

end