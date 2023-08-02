class FavoriteStationsController < ApplicationController
    def index
      @favorite_stations = User.find(params[:user_id]).stations
      render json: @favorite_stations
    end
  
    def create
      @favorite_station = User.find(params[:user_id]).favorite_stations.create(station_id: params[:station_id])
      if @favorite_station.save
        render json: @favorite_station, status: :created
      else
        render json: @favorite_station.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @favorite_station = FavoriteStation.find_by(user_id: params[:user_id], station_id: params[:station_id])
      @favorite_station.destroy
      head :no_content
    end
  end