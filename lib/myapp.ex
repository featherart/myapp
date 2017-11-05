defmodule Myapp do
  use Application
  use Supervisor
  @moduledoc """
      Main application module
    """
  def start(_type, _args) do
    Supervisor.start_link([{Myapp.Router, []}, {Myapp.ApiHandler, []}], strategy: :one_for_one)
  end

  def hello do
    :world
  end

  @doc """
  Say Hello
  ## Parameters
   - name: String of a person
   ## Examples
    iex> MyApp.say("Feather")
    "Hello Feather"
    """
  def say(name) do
    "Hello #{name}"
  end
end
