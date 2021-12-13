class BalancesController < ApplicationController
  before_action :set_balance, only: %i[show edit update destroy]

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
  end

  def edit
  end

  def update
    if @balance.update(balance_params)
      flash[:notice] = "Your credit card balance has been updated."
      redirect_to @balance
    else
      flash.now[:alert] = "Your credit card balance has not been updated."
      render "edit"
    end
  end

  def destroy    
    @balance.destroy

    flash[:notice] = "Your credit card balance has been deleted."
    redirect_to balances_path
  end

  private

  def set_balance
    @balance = Balance.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The balance you"re trying to view does not exist."
    redirect_to balances_path
  end

  def balance_params
    params.require(:balance).permit(:name, :amount)
  end
end
