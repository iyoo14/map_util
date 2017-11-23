defmodule MapUtil.Server do

  def pmap(f,l) do
    s = self()
    ref = make_ref()
    pids = Enum.map(l, fn(i) -> spawn(fn -> do_f(s, ref, f, i) end) end)

    res = gather(pids, ref)
    #IO.puts "#{inspect(res)}"
    {:pmap, res}
  end

  def do_f(parent, ref, f, i) do
    send parent, {self(), ref, f.(i)}
  end

  def gather([_pid|t], ref) do
    #IO.puts "#{inspect(t)}"
    receive do
      {_pid, _ref, ret} -> [ret|gather(t, ref)]
    end
  end

  def gather([], _ref) do
   [] 
  end

  def smap(f,l) do
    res = Enum.map(l,f)
    {:smap, res}
  end
end
