require "rails_helper"

describe "App promo banner", type: :view do
  def component_name
    "app_promo_banner"
  end

  it "renders the component" do
    render_component({})

    assert_select ".gem-c-app-promo-banner__close-button"
    assert_select ".gem-c-app-promo-banner__icon"
  end

  it "allows tracking to be disabled" do
    render_component(disable_ga4: true)

    assert_select ".gem-c-app-promo-banner__close-button"
    assert_select ".gem-c-app-promo-banner__close-button[data-module='ga4-event-tracker']", false

    assert_select ".govuk-link"
    assert_select ".govuk-link[data-module='ga4-link-tracker']", false
  end
end
