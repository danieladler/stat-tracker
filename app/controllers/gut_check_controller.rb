class GutCheckController < ApplicationController

  def index
    @all_checks             = GutCheck.all
    @gut_check              = GutCheck.new
  end

  def add_stat
    @gut_check              = GutCheck.new
    @gut_check.overall      = params[:rating]
    @gut_check.adjective    = params[:comment]
    if @gut_check.save
      redirect_to home_path
    else
      @all_checks           = GutCheck.all
      render :index
    end
  end

  def remove_stat
    @gut_check              = GutCheck.find(params[:id])
    @gut_check.destroy
    redirect_to home_path
  end

end
