module Api
    module V2
        class StationsController < ApplicationController
            def index
                stations = Station.all
                render json: { status: 'SUCCESS', message: 'Loaded stations', data: stations }
            end
        end
    end
end