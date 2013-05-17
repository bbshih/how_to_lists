class GuidesController < ApplicationController
  before_filter :find_guide, :only => [:show, :edit, :update, :destroy]

  def index
    @guides = Guide.all
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

  end

  def edit

  end

  def update
    @guide = Guide.find(params[:id])
    if @guide.update_attributes(params[:guide])
      flash[:notice] = "Guide has been updated."
      redirect_to @guide
    else
      flash[:alert] = "Guide has not been updated."
      render :action => "edit"
    end
  end

  private
  def find_guide
    @guide = Guide.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The guide you were looking for could not be found."
    redirect_to guides_path
  end
end
