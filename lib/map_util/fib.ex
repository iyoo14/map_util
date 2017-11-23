defmodule MapUtil.Fib do
  def fib_calc(0), do: 0
  def fib_calc(1), do: 1
  def fib_calc(n), do: fib_calc(n-1) + fib_calc(n-2)

  def fibt_calc(n), do: fibt_calc(n, 0, 1)
  def fibt_calc(0, _n1, _n2), do: 0
  def fibt_calc(1, _n1, n2), do: n2 
  def fibt_calc(n, 0, 1), do: fibt_calc(n-1,1,1)
  def fibt_calc(n,n1,n2), do: fibt_calc(n-1,n2,n1+n2)
end
