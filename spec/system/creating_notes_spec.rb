require "rails_helper"

RSpec.describe "Our users can create new notes", type: :system do
  before do
    balance = FactoryBot.create(:balance, name: "Costco Credit Card",
                                          amount: 67.45)

    visit balance_path(balance)
    click_link "Add New Note"
  end

  scenario "with valid attributes" do
    fill_in "Name", with: "Gas Card"
    fill_in "Description", with: "This is a gas card provided from Costco."
    click_button "Create Note"

    expect(page).to have_content "Your note has been created."
  end

  scenario "when providing invalid attributes" do
    click_button "Create Note"


    expect(page).to have_content "Your note has not been created."
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Description can't be blank"
  end

  scenario "when providing invalid description lengths" do
    fill_in "Name", with: "Gas Card"
    fill_in "Description", with: "Use it."
    click_button "Create Note"

    expect(page).to have_content "Your note has not been created."
    expect(page).to have_content "Description is too short"
  end
end
