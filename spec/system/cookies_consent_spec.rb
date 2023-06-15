require "rails_helper"

describe "Cookies Consent" do
  context "User not logged in" do
    scenario "Show by default" do
      visit root_path

      expect(page).to have_css ".cookies-eu"
    end

    scenario "Hide when accepted" do
      visit root_path

      within(".cookies-eu") do
        click_button "OK"
      end

      visit root_path

      expect(page).not_to have_css ".cookies-eu"
    end
  end
end
