IO.puts "for"
for x <- [1, 2, 3] do
  IO.puts x
end

IO.puts "Enum"
Enum.map([1, 2, 3], &IO.puts(&1))

IO.puts "recursion"
defmodule Sample do
  def show([x|tl]) do
    IO.puts x
    show(tl)
  end

  def show([]) do
    # noop
  end
end

Sample.show [1, 2, 3]
