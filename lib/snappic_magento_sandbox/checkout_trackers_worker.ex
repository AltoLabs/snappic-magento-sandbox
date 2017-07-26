defmodule SMS.CheckoutTrackersWorker do
  def start_link do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def inc(domain, order_id) do
    key = "#{domain}:#{order_id}"
    Agent.get_and_update __MODULE__, fn (map) ->
      value = case Map.fetch map, key do
        {:ok, val} -> val + 1
        :error -> 1
      end
      {value, Map.put(map, key, value)}
    end
  end
end