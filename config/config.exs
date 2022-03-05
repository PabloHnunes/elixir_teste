use Mix.Config

config :elixir_teste , ElixirTeste.Agendador, jobs: [
        {"* * * * *", fn -> GenServer.cast(:servidor_elixir, :escreve) end }
    ]