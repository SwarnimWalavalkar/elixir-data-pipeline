defmodule DataPipelineTest do
  use ExUnit.Case
  doctest DataPipeline

  test "greets the world" do
    assert DataPipeline.hello() == :world
  end
end
