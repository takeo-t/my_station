module Api
  module V2
    class FavoriteStationsController < ApplicationController
    def index
      @favorite_stations = User.find(params[:user_id]).station2s
      render json: @favorite_stations
    end

    def create
      user = User.find_by(id: params[:user_id])
      return render json: { error: 'User not found' }, status: :not_found unless user

      existing_favorite = user.favorite_stations.find_by(station2_id: favorite_station_params[:station2_id])
      if existing_favorite
        return render json: { error: 'この駅は登録済です。' }, status: :unprocessable_entity
      end

      @favorite_station = user.favorite_stations.build(favorite_station_params)
      if @favorite_station.save
        render json: @favorite_station, status: :created
      else
        puts @favorite_station.errors.full_messages
        render json: { errors: @favorite_station.errors.full_messages }, status: :unprocessable_entity
      end
    end


    def destroy
      @favorite_station = FavoriteStation.find_by(user_id: params[:user_id], station2_id: params[:id])

      if @favorite_station
      @favorite_station.destroy
      head :no_content
      else
      render json: { error: '指定されたお気に入りの駅が見つかりませんでした。' }, status: :not_found
      end
    end

    private

      def favorite_station_params
        params.require(:favorite_station).permit(:station2_id)
      end
    end
  end
end