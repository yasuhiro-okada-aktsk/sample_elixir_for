IO.puts "for"
for x <- 1..3,
    y <- 1..3,
    into: "" do
  "#{x * y},"
end

for x <- 1..3,
    y <- 1..3 do
  "#{x * y},"
end
|> Enum.into("")
|> IO.inspect
