class GutCheckController < ApplicationController

  def index
    @all_checks             = GutCheck.all
    @gut_check              = GutCheck.new
  end

  def add_stat
    @gut_check              = GutCheck.new
    @gut_check.rating      = params[:gut_check][:rating]
    @gut_check.comment    = params[:gut_check][:comment]
    if @gut_check.save
      redirect_to gut_checks_path
    else
      @all_checks           = GutCheck.all
      render :index
    end
  end

  def remove_stat
    @gut_check              = GutCheck.find(params[:id])
    @gut_check.destroy
    redirect_to gut_checks_path
  end

end
