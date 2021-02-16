defmodule HelloWeb.PageView do
  use HelloWeb, :view

  def solved() do
    [
      %{
        :created => "Tue Feb 16 18:47:54 EST 2021",
        :problem => "I want to record the date when a problem is created/solved.",
        :solution => """
            I can add new fields to the solved items and list.  I will need to render them in the template.
          """,
        :solved => "Tue Feb 16 18:47:54 EST 2021",
      },
      %{
        :problem => "It is difficult to keep track of functions and their placement in the markup.",
        :solution => """
          Find another data structure to store these.
          It should be ordered, so we can sort.
          It should have
          * problem
          * solution?
          If there is a solution, show it in the solved section.  If there is not, show it in unsolved.

          What data structure can we use?

          list: https://elixir-lang.org/getting-started/basic-types.html#linked-lists

          KWL are cute, but only meant for simple objects, lists of single key/value pairs.

          We should use a list of maps.
          https://elixir-lang.org/getting-started/keywords-and-maps.html#maps


          > lists in Phoenix.HTML and templates may only contain integers representing bytes, binaries or other lists, got invalid entry
          If you want to dump a complex structure into a template, use inspect.

          ```
          data: <%= inspect data() %>
          ```

          Fun note, even if you change a template's backing view, the page doesn't reload until you change the template.

          I've separated the list management from the template.  Now we can just manage data in the page_view (01/hello/lib/hello_web/views/page_view.ex).
        """,
      },
      %{
        :problem => "I am just writing HTML, not Elixir.",
        :solution =>
          """
          Solution: Write the problems/solutions in Elixir.
          How do I do that?  This is a view.  Views will get data somehow.
          Correction, this is a template.
          https://hexdocs.pm/phoenix/views.html#content
          """
      },
      %{
        :problem => "I need a way to separate solved and unsolved problems." ,
        :solution => "Solution: Separate the lists." ,
      },
      %{
        :problem => "I have many problems and I need a way to sort them." ,
        :solution => "Solution: Change the order in the markup." ,
      },
      %{
        :problem => "I need a way to show which problem I am working on." ,
        :solution => "Solution: Whatever.  No you don't.  That's not part of the app.  The app is the result of the solutions." ,
      },
      %{
        :problem => "I want to show a history of problems and the solutions." ,
      },
      %{
        :problem => "I want the evolution to be something that can be followed." ,
      },
      %{
        :problem => "As I create solutions (MVPs), I will change the content.  I want the history/evolution to be something that can be followed." ,
        :solution => "After each solution, add a commit." ,
      },
    ]
  end

  def unsolved() do
    [
      %{
        :problem => "I want a way to merge similar problems.",
      },
    ]
  end
end
