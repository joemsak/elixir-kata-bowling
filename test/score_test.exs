ExUnit.start

defmodule ScoreTest do
  use ExUnit.Case, async: true

  defmodule Score do
    def compute(frames) do
      List.foldl(List.flatten(frames), 0, fn (x, acc) -> x + acc end)
    end
  end

  test "all gutters is a score of 0" do
    score = Score.compute(all_gutters)
    assert score == 0
  end

  test "all gutters and 1 pin is a score of 1" do
    score = Score.compute(all_gutters_and_one_pin)
    assert score == 1
  end

  defp all_gutters do
    [[0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0]]
  end

  defp all_gutters_and_one_pin do
    [[0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 0],
     [0, 1]]
  end
end
