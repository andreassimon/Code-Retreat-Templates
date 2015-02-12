# Processes
defmodule Ping do
  def start do
    spawn fn ->
      receive do
        _ -> IO.puts "pong!"
      end
    end
  end
end

pid = Ping.start
Process.alive? pid
send pid, 1

# GUI für Beam
# iex> :observer.start

defmodule Stack.OtpServer do
  # http://elixir-lang.org/docs/stable/elixir/GenServer.html
  use GenServer

  def start_link(initial_list) do
    GenServer.start_link(__MODULE__, initial_list)
  end

  def pop(server_pid) do
    GenServer.call(server_pid, :pop)
  end

  def handle_call(:pop, _from, [head | tail]) do
    { :reply, head, tail }
  end

  def handle_cast({:push, element}, current_list) do
    { :noreply, [element | current_list] } 
  end
end

defmodule Stack.AgentServer do
  # http://elixir-lang.org/docs/stable/elixir/Agent.html
  def start_link(initial_list) do
    Agent.start_link(fn -> initial_list end)
  end

  def pop(server_pid) do
    Agent.get_and_update(server_pid, fn [head|tail] ->
      {head, tail}
    end)
  end

  def push(server_pid, value) do
    Agent.update(server_pid, fn list ->
      [ value | list ]
    end)
  end
end
