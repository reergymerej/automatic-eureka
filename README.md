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

--------------------------------------------------------------------------------

# Sat Feb 13 19:20:39 EST 2021

Learning by doing is the best.  Erlang is too low, Elixir is too bare, use
Phoenix to get started ASAP.  Grow from there.

Step one, create a project.

https://hexdocs.pm/phoenix/up_and_running.html#content

# What is mix?
Build tool, part of Elixir.
  https://hexdocs.pm/mix/Mix.html

# (DBConnection.ConnectionError) tcp connect (localhost:5432): connection refused
Is postgres running?
ps auxwww | grep postgres

Looks like we have a general problem connecting to pg.  Fix that first.

# How do I stop postgres on mac?
brew services stop postgresql
pg_ctl -D /usr/local/var/postgres stop

 brew services list
Name              Status  User        Plist
mongodb-community error   jeremygreer /Users/jeremygreer/Library/LaunchAgents/homebrew.mxcl.mongodb-community.plist
mysql             stopped
php               stopped
postgresql        error   jeremygreer /Users/jeremygreer/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
postgresql@9.6    stopped
tor               stopped
traefik           stopped
traefik@1         stopped
unbound           stopped


Open Plist file, find
  <key>StandardErrorPath</key>
  <string>/usr/local/var/log/postgres.log</string>

  tail -f /usr/local/var/log/postgres.log

FATAL:  database files are incompatible with server
2021-02-14 07:55:31.994 PST [2403] DETAIL:  The data directory was initialized by PostgreSQL version 12, which is not compatible with this version 13.1.

https://stackoverflow.com/questions/17822974/postgres-fatal-database-files-are-incompatible-with-server

brew postgresql-upgrade-database

That failed at first, then it worked.

Now I can psql.
