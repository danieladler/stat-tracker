class GutCheckController < ApplicationController

  def index
    @all_checks             = GutCheck.all
    @gut_check              = GutCheck.new
    @all_averages           = average_stat
  end

  def add_stat
    @gut_check              = GutCheck.new
    @gut_check.rating       = params[:gut_check][:rating]
    @gut_check.comment      = params[:gut_check][:comment]
    if @gut_check.save
      redirect_to gut_checks_path
    else
      @all_checks           = GutCheck.all
      render :index
    end
  end

  def average_stat
    @rating_array           = []
    @all_checks.each do |g|
      @rating_array << g.rating
    end
    @all_averaged           = (@rating_array.sum / @rating_array.count).round(2)
  end

  def edit_stat
    @gut_check              = GutCheck.find(params[:id])
    @gut_check.rating       = params[:gut_check][:rating]
    @gut_check.comment      = params[:gut_check][:comment]
    @gut_check.save
    redirect_to gut_checks_path
  end

  def remove_stat
    @gut_check              = GutCheck.find(params[:id])
    @gut_check.destroy
    redirect_to gut_checks_path
  end

end
