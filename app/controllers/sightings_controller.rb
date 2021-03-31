class SightingsController < ApplicationController
    def show
        sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sighting).to_serialize_json
    end
end
