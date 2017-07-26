defmodule SMS.Web.MockupsView do
  use SMS.Web, :view

  def render("current_store.json", %{domain: domain}) do
    %{
      "id" => 1,
      "domain" => domain,
      "store_domain" => domain,
      "name" => "My Mocked Store",
      "currency" => "USD",
      "money_with_currency_format" => "${{amount}} USD",
      "ecommerce_provider" => "magento",
      "populating_products" => false,
      "preparing_advert" => false,
      "preparing_advert_previews" => false,
      "facebook_pixel_id" => "123123123",
      "advert_enabled" => true,
      "analytics_enabled" => true,
      "email_reminders_enabled" => true
    }
  end

  def render("checkout_trackers_record.json", %{result: result}) do
    %{
      "result" => result
    }
  end

  def render("create_webhook.json", _) do
    %{
      "success" => true
    }
  end
end
