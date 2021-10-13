require "rails_helper"

RSpec.describe "Users can create new balance data" do
  scenario "with valid attributes" do
    visit "/"

    click_link "Learn More"

    fill_in "Name", with: "Costco Credit Card"
    fill_in "Balance", with: 123.99
    click_button "Create Balance"

    expect(page).to have_content "Your credit card balance has been created."
  end
end
