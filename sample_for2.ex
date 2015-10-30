IO.puts "for"
for x <- [1, 2, 3],
    y <- [4, 5, 6] do
  IO.inspect {x , y}
end

IO.puts "Enum"
Enum.map([1, 2, 3],
  fn x ->
    Enum.map([4, 5, 6], &IO.inspect {x, &1})
  end)

IO.puts "recursion"
defmodule Sample do
  def show([x|tl], y) do
    show(x, y)
    show(tl, y)
  end

  def show([], _) do
    # noop
  end

  def show(x, [y|tl]) do
    IO.inspect {x, y}
    show(x, tl)
  end

  def show(_, []) do
    # noop
  end
end

Sample.show [1, 2, 3], [4, 5, 6]
