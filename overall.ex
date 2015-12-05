defmodule Overall do
    def product([]), do: IO.puts "finally"

    def product([head | tail]) do
        IO.inspect head
        IO.inspect tail

        product tail
    end
end

# Overall.product [1,2,3,4,5]
