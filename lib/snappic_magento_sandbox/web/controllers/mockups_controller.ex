defmodule SMS.Web.MockupsController do
  @moduledoc false

  use SMS.Web, :controller

  # The equivalent of our GET snappic /stores/current?domain=... endpoint.
  def current_store(conn, params) do
    render conn, :current_store, domain: params["domain"]
  end

  # The equivalent of our POST /magento/webhooks endpoint.
  def create_webhook(conn, _params) do
    render conn, :create_webhook
  end
end