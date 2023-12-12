require "rails_helper"

RSpec.describe "Our users can view notes", type: :system do
  before do
    costco_balance = FactoryBot.create(:balance, name: "Costco Credit Card",
                                          amount: 67.45)
    FactoryBot.create(:note, balance: costco_balance,
                             name: "Gas Card",
                             description: "This is a gas card provided by Costco.")

    amex_balance = FactoryBot.create(:balance, name: "American Express Card",
                                               amount: 1238.54)
    FactoryBot.create(:note, balance: amex_balance,
                             name: "AMEX Travel Card",
                             description: "American Express card for travel expenses.")

    visit "/"
  end

  scenario "for any particular balance" do
    click_link "View Balances"
    click_link "Costco Credit Card"

    expect(page).to have_content "Gas Card"
    expect(page).to_not have_content "Amex Travel Card"

    click_link "Gas Card"

    expect(page).to have_content "Gas Card"
    expect(page).to have_content "This is a gas card provided by Costco."
  end
end
