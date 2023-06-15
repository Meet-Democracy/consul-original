class AddCookiesConsentToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cookies_consent, :boolean, default: false
  end
end
