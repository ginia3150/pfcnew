class TotalsController < ApplicationController
  def index
  end

  def new
    @total = Total.new
  end

  def create
    @total = Total.new(total_params)
    if @total.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def total_params
    params.require(:total).permit(:n_name, :protein, :fat, :carb, :calorie).merge(user_id: current_user.id)
  end
end