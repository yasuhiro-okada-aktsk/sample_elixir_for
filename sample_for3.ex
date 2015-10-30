IO.puts "for"
for x <- 1..3,
    y <- 1..3,
    x < y do
  IO.inspect {x , y}
end

IO.puts "Enum"
Enum.map(1..3,
  fn x ->
    Enum.map(1..3,
      fn y ->
        if x < y do
          IO.inspect {x, y}
        end
      end)
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

  def show(x, [y|tl]) when x < y do
    IO.inspect {x, y}
    show(x, tl)
  end

  def show(x, [y|tl]) do
    show(x, tl)
  end

  def show(_, []) do
    # noop
  end
end

Sample.show Enum.to_list(1..3), Enum.to_list(1..3)
