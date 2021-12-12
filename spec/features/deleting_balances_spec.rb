require "rails_helper"

RSpec.feature "Our users can delete balances" do
  scenario "successfully" do
    FactoryBot.create(:balance, name: "Costco Credit Card",
                                amount: 67.45)

    visit "/"
    click_link "View Balances"
    click_button "Delete Balance"

    expect(page).to have_content "Your credit card balance has been deleted."
    expect(page.current_url).to eq balances_url
    expect(page).to have_no_content "Costco Credit Card"
  end
end
