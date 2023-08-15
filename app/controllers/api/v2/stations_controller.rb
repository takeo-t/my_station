module Api
    module V2
        class StationsController < ApplicationController
            def index
                stations = Station2.all

                render json: {
                    status: 'SUCCESS',
                    message: 'Loaded stations',
                    data: stations,
                }
            end

            def change_stations
                change_stations = ChangeStation.all
                render json: { status: 'SUCCESS', message: 'Loaded change stations', data: change_stations }
              end
              
        end
    end
end