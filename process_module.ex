defmodule Bounce do

    def report do
        receive do
            msg -> IO.puts("Received #{msg}")
        end
    end

end

# pid = spawn(Bounce, :report, [])
# send(pid, 23)
