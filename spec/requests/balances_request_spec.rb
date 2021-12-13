require "rails_helper"

RSpec.describe BalancesController, type: :request do
  it "handles balances that don"t exist" do
    balance_path = "/balances/no-data-here"
    get balance_path

    expect(response).to redirect_to(balances_path)

    note = "The balance you"re trying to view does not exist."
    expect(flash[:alert]).to eq note
  end
end
