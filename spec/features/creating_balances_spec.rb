require "rails_helper"

RSpec.feature "Users can create new balance data" do
  before do
    visit "/"

    click_link "Add Balances"
  end

  scenario "with valid attributes" do
    fill_in "Name", with: "Costco Credit Card"
    fill_in "Amount", with: 123.99
    click_button "Create Balance"

    expect(page).to have_content "Your credit card balance has been created."

    balance = Balance.find_by!(name: "Costco Credit Card")
    expect(page.current_url).to eq balance_url(balance)

    title = "Costco Credit Card - Balances - CCB Tracker"
    expect(page).to have_title title
  end

  scenario "when providing invalid (blank) balance data" do
    click_button "Create Balance"

    expect(page).to have_content "Your credit card balance has not been created."
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Amount is not a number"
  end

  scenario "when providing balances less than 0.00" do
    fill_in "Amount", with: -5.00
    click_button "Create Balance"

    expect(page).to have_content "Your credit card balance has not been created."
    expect(page).to have_content "Amount must be greater than or equal to 0.01"
  end
end
