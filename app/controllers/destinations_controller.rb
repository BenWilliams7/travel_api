class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :update, :destroy]

  # GET /destinations
  def index
    @destinations = Destination.all
    json_response(@destinations)
  end

  # POST /destinations
  def create
    @destination = Destination.create!(destination_params)
    json_response(@destination, :created)
  end

  # GET /destinations/:id
  def show
    json_response(@destination)
  end

  # PUT /destinations/:id
  def update
    @destination.update(destination_params)
    head :no_content
  end

  # DELETE /destinations/:id
  def destroy
    @destination.destroy
    head :no_content
  end

  private

  def destination_params
    # whitelist params
    params.permit(:name, :price, :description, :url)
  end

  def set_destination
    @destination = Destination.find(params[:id])
  end
end
