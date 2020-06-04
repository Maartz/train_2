class RoundsTrackingsController < ApplicationController

    def index
        @round_trackings = RoundTracking.all
    end

end
  