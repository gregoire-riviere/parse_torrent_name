defmodule ParseTorrentName do
  
  def parse(file_name) do
    file_name = String.replace(file_name, " ", "+")
    {result, _} = System.cmd("python", ["./python_scripts/test.py", file_name])
    result |>
    String.replace("'", "\"") |>
    Poison.decode!()
  end

end
