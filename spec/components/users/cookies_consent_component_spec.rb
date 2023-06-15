require "rails_helper"

describe Users::CookiesConsentComponent do
  describe "After User Login" do
    let(:user) { create(:user) }
    let(:component) { Users::CookiesConsentComponent.new }
    before do
      request.env["devise.mapping"] = Devise.mappings[:user]
    end

    context "when cookies consent is not accepted" do
      it "shows cookies consent form" do
        request.cookies[:cookie_eu_consented] = "false"
        user = create(:user)

        sign_in(user)

        expect(user.cookies_consent).to eq(false)

        render_inline component

        expect(page).to have_css ".cookies-eu"
      end
    end

    context "when cookies consent is accepted" do
      it "doesnt show cookies consent form" do
        request.cookies[:cookie_eu_consented] = "true"
        user = create(:user)

        sign_in(user)

        render_inline component

        expect(page).not_to have_css ".cookies-eu"
      end
    end
  end

  describe "After User Logout" do
    let(:user) { create(:user) }
    let(:component) { Users::CookiesConsentComponent.new }
    before do
      request.env["devise.mapping"] = Devise.mappings[:user]
    end

    context "when cookies consent is not accepted" do
      it "shows cookies consent form" do
        request.cookies[:cookie_eu_consented] = "false"
        user = create(:user)

        sign_in(user)
        logout

        render_inline component

        expect(page).to have_css ".cookies-eu"
      end
    end

    context "when cookies consent is accepted" do
      it "doesnt show cookies consent form" do
        request.cookies[:cookie_eu_consented] = "true"
        user = create(:user)

        sign_in(user)
        logout

        render_inline component

        expect(page).not_to have_css ".cookies-eu"
      end
    end
  end
end
