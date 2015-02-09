# 1) Start ExUnit.
ExUnit.start

# 2) Create a new test module (test case) and use [`ExUnit.Case`](ExUnit.Case.html).
defmodule AssertionTest do
  # 3) Notice we pass `async: true`, this runs the test case
  #    concurrently with other test cases
  use ExUnit.Case, async: true

  test "Atoms" do
    # http://elixir-lang.org/docs/master/ex_unit/ExUnit.Assertions.html
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


defmodule PatternMatchingTest do
  use ExUnit.Case, async: true

  test "matching tuples" do
    {a, b, c} = {:hello, "world", 42}
    assert a == :hello
  end
end

defmodule CaseCondAndIfTest do
  use ExUnit.Case, async: true

  x = 1
  test "case" do
    case {1, 2, 3} do
      {1, y, 3} when y > 0 -> "Will match"
      _  -> "Won't match"
    end
  end

  test "guard clauses in anonymous functions" do
    f = fn
      x, y when x > 0 -> x+y
      x, y -> x*y
    end
    assert 4 == f.(1, 3)
    assert -3 == f.(-1, 3)
  end

  test "cond" do
    assert "But this will" == (cond do
      2 + 2 == 5 -> "This will not be true"
      2 * 2 == 3 -> "Nor this"
      1 + 1 == 2 -> "But this will"
      true       -> "This is always true (equivalent to else)"
    end)
  end

  test "if / unless" do
    assert "This works" == (if true do
      "This works"
    end)
     
    assert nil == (unless true do
      "This will never be seen"
    end)

    assert "This will" == (if nil do
      "This won't be seen"
    else
      "This will"
    end)
  end

  test "do/end blocks" do
    assert 4 == (if true, do: 1+3)

    assert 13 == (if true, do: (
      a = 1+2
      a+10
    ))

    assert :that == (if false, do: :this, else: :that)
  end

end

defmodule BinariesStringsAndCharLists do
  use ExUnit.Case, async: true
  test "String vs. Binary" do
    string = "hełło"

    assert 7 == byte_size(string)
    assert 5 == String.length(string)
  end

  test "code points" do
    assert 97 == ?a
    assert 322 == ?ł

    assert ["h", "e", "ł", "ł", "o"] == String.codepoints("hełło")
  end

  test "Binaries" do
    assert nil != <<0, 1, 2, 3>>
    assert 4 == byte_size <<0, 1, 2, 3>>
    assert false == String.valid?(<<239, 191, 191>>)
    assert <<0, 1, 2, 3>> == <<0, 1>> <> <<2, 3>>
    assert <<104, 101, 197, 130, 197, 130, 111, 0>> == "hełło" <> <<0>>
    assert 'hełło' == to_char_list(to_string 'hełło')
  end

end
