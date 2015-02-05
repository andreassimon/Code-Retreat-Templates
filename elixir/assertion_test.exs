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
end
