ExUnit.start

defmodule ScoreTest do
  use ExUnit.Case, async: true

  defmodule Score do
    def compute(frames) do
      0
    end
  end

  test "all gutters is a score of 0" do
    score = Score.compute(all_gutters)
    assert score == 0
  end

  defp all_gutters do
  end
end
