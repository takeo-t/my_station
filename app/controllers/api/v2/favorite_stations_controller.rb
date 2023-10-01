module Api
  module V2
    class FavoriteStationsController < ApplicationController
    def index
      @favorite_stations = User.find(params[:user_id]).stations
      render json: @favorite_stations
    end

    # def create
    #   user = User.find_by(id: params[:user_id])
    #   return render json: { error: 'User not found' }, status: :not_found unless user
    #   @favorite_station = User.find(params[:user_id]).favorite_stations.create(station_id: params[:station_id])
    #   if @favorite_station.save
    #     render json: @favorite_station, status: :created
    #   else
    #     render json: @favorite_station.errors, status: :unprocessable_entity
    #   end
    # end
    def create
      user = User.find_by(id: params[:user_id])
      return render json: { error: 'User not found' }, status: :not_found unless user

      @favorite_station = user.favorite_stations.build(station_id: params[:station_id])
      if @favorite_station.save
        render json: @favorite_station, status: :created
      else
        render json: { errors: @favorite_station.errors.full_messages }, status: :unprocessable_entity
      end
    end


    def destroy
      @favorite_station = FavoriteStation.find_by(user_id: params[:user_id], station_id: params[:station_id])
      @favorite_station.destroy
      head :no_content
    end

    private

      def favorite_station_params
        params.permit(:station_id)
      end
    end
  end
end