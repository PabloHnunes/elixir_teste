defmodule ElixirTeste.Servidor do
    use GenServer

    def start_link(_) do
        GenServer.start_link(__MODULE__, :ok, name: :servidor_elixir)
    end

    def init(:ok) do
        { :ok , %{} }
    end

    def handle_cast(:escreve, _) do
        ElixirTeste.EscreveNumeroAleatorio.escreve
        { :noreply, %{} }
    end
    
end