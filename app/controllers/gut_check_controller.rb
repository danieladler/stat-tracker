class GutCheckController < ApplicationController

  def index
    @all_checks             = GutCheck.all
    @gut_check              = GutCheck.new
  end

  def new
    @gut_check              = GutCheck.new
  end

  def add_stat
    @gut_check              = GutCheck.new
    @gut_check.overall      = params[:rating]
    @gut_check.adjective    = params[:comment]
    if @gut_check.save
      redirect_to home_path
    else
      @all_checks = GutCheck.all
      render "/gut-checks/new"
    end
  end

  def remove_stat

  end

end
