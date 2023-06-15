class Users::CookiesConsentComponent < ApplicationComponent
  delegate :current_user, :user_signed_in?, to: :helpers
end
