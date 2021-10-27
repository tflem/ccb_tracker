class BalancesController < ApplicationController
  def index
    @balances = Balance.all
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
      flash.now[:alert] = "Your credit card balance has not been created."
      render "new"
    end
  end

  def show
    @balance = Balance.find(params[:id])
  end

  def edit
    @balance = Balance.find(params[:id])
  end

  def update
    @balance = Balance.find(params[:id])

    if @balance.update(balance_params)
      flash[:notice] = "Your credit card balance has been updated."
      redirect_to @balance
    else
      flash.now[:alert] = "Your credit card balance has not been updated."
      render "edit"
    end
  end

  private

  def balance_params
    params.require(:balance).permit(:name, :balance)
  end
end
