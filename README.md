Let's learn Elixir again.  Do it in small chunks.  Keep it interesting.

# Where does Elixir run?
  BEAM virtual machine

    BEAM is used for Erlang, Elixir is ontop of that.

# How can I hello world Elixir?
  iex - interactive session

    iex

    IO.puts("Hello, world.")
    Hello, world.

  compile and run .ex file

    elixir simple.exs

# What is something I can do with Elixir?

  Concurrent apps are the way to go.

# How can I get two Elixir apps (nodes) to talk to each other?
  * Start two nodes (iex --sname name)
  * Define a module in node A
  * Tell node B to invoke the method.

  https://elixirschool.com/en/lessons/advanced/otp-distribution/
  OTP (Open Telecom Platform, comes from Erlang) distribution

# How does Elixir know what nodes are available?
  When we attempt to connect, OTP takes care of that.  It doesn't magically
  know which nodes there are in the universe.  It tries to connect, then it
  knows about them.  `Node.list()`

  https://stephenbussey.com/2018/02/06/elixir-node-networking-basics.html

    OTP provides the connection code.
    A TCP socket is created between the nodes.
