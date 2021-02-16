defmodule HelloWeb.PageView do
  use HelloWeb, :view

  def problem1() do
    "Problem: I am just writing HTML, not Elixir."
  end

  def solution1() do
    """
    Solution: Write the problems/solutions in Elixir.
    How do I do that?  This is a view.  Views will get data somehow.
    Correction, this is a template.
    https://hexdocs.pm/phoenix/views.html#content
    """
  end

  def pm1() do
    "Problem: I need a way to separate solved and unsolved problems."
  end

  def sm1() do
    "Solution: Separate the lists."
  end

  def pm2() do
    "Problem: I have many problems and I need a way to sort them."
  end

  def sm2() do
    "Solution: Change the order in the markup."
  end

  def pm3() do
    "Problem: I need a way to show which problem I am working on."
  end

  def sm3() do
    "Solution: Whatever.  No you don't.  That's not part of the app.  The app is the result of the solutions."
  end

  def pm4() do
    "Problem: I want to show a history of problems and the solutions."
  end

  def pm5() do
    "Problem: I want the evolution to be something that can be followed."
  end

  def pm6() do
    "Problem: As I create solutions (MVPs), I will change the content.  I want the history/evolution to be something that can be followed."
  end

  def sm6() do
    "Solution: After each solution, add a commit."
  end

  def p2() do
    "Problem: I want a way to merge similar problems."
  end
end
