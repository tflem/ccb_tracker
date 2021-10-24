require "rails_helper"

RSpec.describe "Our users can view balances" do
  scenario "with the balance data" do
    balance = FactoryBot.create(:balance, name: "Costco Credit Card",
                                          balance: 67.45)
    visit "/"
    click_link "View Balances"
    click_link "Costco Credit Card"
    expect(page.current_url).to eq balance_url(balance)
  end
end
