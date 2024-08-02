defmodule ExAssignment.Cache do
	use GenServer

	@name __MODULE__

	def start_link(_), do: GenServer.start_link(__MODULE__, [], name: @name)

	def init(_) do
		IO.puts("Creating ETS #{@name}")

		:ets.new(:recommendation_keep, [:set, :public, :named_table])
    {:ok, "Created"}
	end
end