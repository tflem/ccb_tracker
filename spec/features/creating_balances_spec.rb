require "rails_helper"

RSpec.describe "Users can create new balance data" do
  scenario "with valid attributes" do
    visit "/"

    click_link "Learn More"

    fill_in "Name", with: "Costco Credit Card"
    fill_in "Balance", with: 123.99
    click_button "Add Balance Information"

    expect(page).to have_content "Credit card balance data has been created."
  end
end
