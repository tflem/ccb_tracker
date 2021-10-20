require "rails_helper"

RSpec.describe "Users can create new balance data" do
  before do
    visit "/"

    click_link "Learn More"
  end

  scenario "with valid attributes" do
    fill_in "Name", with: "Costco Credit Card"
    fill_in "Balance", with: 123.99
    click_button "Create Balance"

    expect(page).to have_content "Your credit card balance has been created."

    balance = Balance.find_by!(name: "Costco Credit Card")
    expect(page.current_url).to eq balance_url(balance)

    title = "Costco Credit Card - Balances - CCB Tracker"
    expect(page).to have_title title
  end

  scenario "when providing invalid balance data" do
    click_button "Create Balance"

    expect(page).to have_content "Your credit card balance has not been created."
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Balance can't be blank"
  end
end
