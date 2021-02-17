defmodule HelloWeb.PageView do
  use HelloWeb, :view

  @problems [
    %{
      :created => "Tue Feb 16 19:24:43 EST 2021",
      :problem => "Too hard to read, too much blank content.",
      :notes => """
        We can conditionally display content in the template.
        <%= if some_thing?(x) do %>
        <% end %>

        We don't want the logic in the template, so put that in the view code.
      """,
      :solution => "Conditionally render the content.",
      :solved => "Tue Feb 16 19:32:47 EST 2021",
    },
    %{
      :created => "Tue Feb 16 19:12:02 EST 2021",
      :problem => "There is too much duplication.  The app should be able to figure out what is solved and what is not.",
      :notes => """
        Keep all in one list.  Use methods to filter.
        Module attributes seem to be the way to go here.  Then I can change the solved/0 and unsolved/0 to filter that.

        Filter with Enum.filter

        How do you check if a map has an atom?
          https://hexdocs.pm/elixir/Map.html#has_key?/2
          Map.has_key?(m, :foo)
      """,
      :solution => "Combine list as module attribute, use methods to filter solved/unsolved",
      :solved => "Tue Feb 16 19:23:39 EST 2021",
    },
    %{
      :created => "Tue Feb 16 18:53:44 EST 2021",
      :problem => "The date formats are weird."
    },
    %{
      :created => "Tue Feb 16 18:51:54 EST 2021",
      :problem => "Old problems/solutions have no dates and it looks weird."
    },
    %{
      :problem => "I want a way to merge similar problems.",
    },
    %{
      :created => "Tue Feb 16 18:58:50 EST 2021",
      :problem => "It is a pain to add the dates manually.",
      :notes => """
        I can add a form on the site that will submit a new record.  That means I have to type in the form, though.
        """,
      :solved => "Tue Feb 16 19:09:16 EST 2021",
      :solution => ' Use this macro to add it for you.  :r!dateI"A",kJ ',
    },
    %{
      :created => "Tue Feb 16 19:02:33 EST 2021",
      :problem => "I want a place to keep notes about the solution, where I can type in Vim, freeform.",
      :notes => """
        I can add another atom in the map called "notes."
        """,
      :solution => "Add notes in the data.",
      :solved => "Tue Feb 16 19:04:30 EST 2021",
    },
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

  def solved() do
    Enum.filter(@problems,
      fn x -> Map.has_key?(x, :solution) end
    )
  end

  def unsolved() do
    Enum.filter(@problems,
      fn x -> !Map.has_key?(x, :solution) end
    )
  end
end
