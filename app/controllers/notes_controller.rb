class NotesController < ApplicationController
  before_action :set_balance
  before_action :set_note, only: %i[show edit update destroy]

  def new
    @note = @balance.notes.build
  end

  def create
    @note = @balance.notes.build(note_params)

    if @note.save
      flash[:notice] = "Your note has been created."
      redirect_to balance_note_path(@balance, @note)
    else
      flash.now[:alert] = "Your note has not been created."
      render :new
    end
  end

  def show
  end

  private

  def note_params
    params.require(:note).permit(:name, :description)
  end

  def set_balance
    @balance = Balance.find(params[:balance_id])
  end

  def set_note
    @note = @balance.notes.find(params[:id])
  end
end
