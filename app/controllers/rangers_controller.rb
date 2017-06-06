class RangersController < ApplicationController
  def index
  	@rangers = Ranger.all
  end

  def show
  	@ranger = Ranger.find(params[:id])
  end

  def new
  	@ranger = Ranger.new
  end

  def edit
  	@ranger = Ranger.find(params[:id])
  end

  def create
  	Ranger.create(ranger_params)
  	redirect_to rangers_path
  end

  def update
  	r = Ranger.find(params[:id])
  	r.update(ranger_params)
  	reidrect_to rangers_path
  end

  def destroy
    Ranger.find(params[:id]).parks.clear
  	Ranger.find(params[:id]).delete
  	redirect_to rangers_path
  end

  private

  def ranger_params
  		params.require(:ranger).permit(:name, :park_ids => [])
  end

end
