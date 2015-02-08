# 1) Start ExUnit.
ExUnit.start

# 2) Create a new test module (test case) and use [`ExUnit.Case`](ExUnit.Case.html).
defmodule AssertionTest do
  # 3) Notice we pass `async: true`, this runs the test case
  #    concurrently with other test cases
  use ExUnit.Case, async: true

  # 4) Use the `test` macro instead of `def` for clarity.
  test "the truth" do
    # http://elixir-lang.org/docs/master/ex_unit/ExUnit.Assertions.html
    assert true
  end

  test "Atoms" do
    assert :hello == :hello
  end

  test "strings" do
    assert "hello #{:world}" == "hello #{:world}"
    assert "hello
world" == "hello\nworld"
    assert "hello world" == "hello " <> "world"
  end

  test "comparisons" do
    assert 1 == 1.0
    refute 1 === 1.0
  end

  test "anonymous functions" do
    add = fn a, b -> a+b end
    assert is_function(add)
    assert 3 == add.(1, 2)
  end

  test "lists" do
    assert [1, 2] ++ [true] ++ [3] == [1, 2, true, 3]
    assert 1 == hd([1, 2, 3])
    assert [2, 3] == tl([1, 2, 3])
    assert 'hello' == [104, 101, 108, 108, 111]
  end

  test "tuples" do
    assert {0, "world"} == put_elem({0, :hello}, 1, "world")
  end
end
