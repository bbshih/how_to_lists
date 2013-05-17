class ActionsController < ApplicationController
  before_filter :find_guide
  before_filter :find_action, :only => [:show, :edit, :update, :destroy]

  def new
    @action = @guide.actions.build
  end

  def create
    # binding.pry
    @action = @guide.actions.build(params[:action])
    if @action.save
      flash[:notice] = "Action has been created."
      redirect_to [@guide, @action]
    else
      flash[:alert] = "Action has not been created."
      render :action => "new"
    end
  end

  def show
  end

private
  def find_guide
    @guide = Guide.find(params[:guide_id])
  end

  def find_action
    @action = @guide.actions.find(params[:id])
  end

end
