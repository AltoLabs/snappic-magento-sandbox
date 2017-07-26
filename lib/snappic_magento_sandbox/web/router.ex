defmodule SMS.Web.Router do
  use SMS.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SMS.Web do
    pipe_through :api
    get "/stores/current",            MockupsController, :current_store
    get "/checkout_trackers/record",  MockupsController, :checkout_trackers_record
    post "/magento/webhooks",         MockupsController, :create_webhook
  end
end
