defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do

    test "should return exact number of odd numbers" do
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    end

    test "should consider decimal values as odd" do
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6.64", "abc"]) == 4
    end

    test "should return 0 for empty list" do
      assert ListFilter.call([]) == 0
    end
  end
end
