defmodule ElixirTeste.Aplicacao do
    use Application

    def start(_type, _args) do
        children = [
            ElixirTeste.Servidor,
            ElixirTeste.Agendador
        ]

        opts = [
            strategy: :one_for_one,
            name: ElixirTeste.Supervisor
        ]

        Supervisor.start_link(children, opts)
    end
end