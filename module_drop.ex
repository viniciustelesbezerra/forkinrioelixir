defmodule Drop do
    def drop do
        receive do
            {from, planemo, distance} ->
                send(from, {planemo, distance, fall_velocity(planemo, distance)})
            drop()
        end
    end

    defp fall_velocity(:earth, distance) when distance >= 0 do
        :math.sqrt(2 * 9.8 * distance)
    end

    defp fall_velocity(:moon, distance) when distance >= 0 do
        :math.sqrt(2 * 1.6 * distance)
    end
end

# c("drop.ex")
# c("mph_drop.ex")
# pid1 = spawn(MphDrop, :mph_drop, [])
# send(pid1, {:earth, 20})
# send(pid1, {:moon, :zoids})
