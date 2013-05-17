class GuidesController < ApplicationController
  def index
  end

  def new
    @guide = Guide.new
  end

  def create
    @guide = Guide.new(params[:guide])
    if @guide.save
      flash[:notice] = "Guide has been created"
      redirect_to @guide
    else
      flash[:alert] = "Guide has not been created"
      render :action => "new"
    end
  end

  def show
    @guide = Guide.find(params[:id])
  end
end
