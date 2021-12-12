require "rails_helper"

RSpec.feature "Our users can edit balances" do
  before do
    FactoryBot.create(:balance, name: "Costco Credit Card",
                                amount: 67.45)
    visit "/"
    click_link "View Balances"
    click_button "Edit Balance"
  end

  scenario "with valid balance data" do
    fill_in "Name", with: "Capital One"
    fill_in "Amount", with: 53.78
    click_button "Update Balance"

    expect(page).to have_content "Your credit card balance has been updated."
    expect(page).to have_content "Capital One"
    expect(page).to have_content 53.78
  end

  scenario "with invalid (blank) balance data" do
    fill_in "Name", with: ""
    fill_in "Amount", with: ""
    click_button "Update Balance"

    expect(page).to have_content "Your credit card balance has not been updated."
  end

  scenario "with invalid balance data less than 0.00" do
    fill_in "Amount", with: -5.00
    click_button "Update Balance"

    expect(page).to have_content "Your credit card balance has not been updated."
  end
end
