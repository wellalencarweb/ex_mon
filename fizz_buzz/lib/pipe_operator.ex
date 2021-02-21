# Pipe Operator

# => Pipe Operator é representado por esse símbolo |>
# => responsável por passar o resultado de uma expressão como primeiro parâmetro de outra expressão.
# => É possível criar PIPELINES de execução dada determinada expressão (variável ou função).

defmodule PipeOperator do
  # Receber o nome do arquivo (file_name)
  # Ler o arquivo (File.read())
  # Transformar os dados do arquivo em uma lista de números (handle_file_read())
  def build(file_name) do
    # file = File.read(file_name)
    # handle_file_read(file)
    file_name
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    # list = String.split(result, ",")
    # Enum.map(list, &String.to_integer/1)
    result
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)

  end
  def handle_file_read({:error, mgs}), do: "Erro ao ler o arquivo: #{mgs}"

end
