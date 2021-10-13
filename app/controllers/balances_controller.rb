class BalancesController < ApplicationController
  def index
  end

  def new
    @balance = Balance.new
  end

  def create
    @balance = Balance.new(balance_params)

    if @balance.save
      flash[:notice] = "Your credit card balance has been created."
      redirect_to @balance
    else
      #notta notta yet
    end
  end
end
