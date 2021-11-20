class NotesController < ApplicationController
  before_action :set_balance

  def new
    @note = @balance.notes.build
  end

  def create
    @note = @balance.notes.build(note_params)

    if @note.save
      flash[:notice] = "Your note has been created."
      redirect_to balance_note_path(@balance, @note)
    else
      flash.now[:alert] = "Your note has not been created".
      render "new"
    end
  end

  private

  def note_params
    params.require(:note).permit(:name, :description)
  end

  def set_balance
    @balance = Balance.find(params[:balance_id])
  end
end
