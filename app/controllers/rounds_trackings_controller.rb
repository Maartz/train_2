# frozen_string_literal: true

class RoundsTrackingsController < ApplicationController
  before_action :set_round_tracking, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  def index
    @round_trackings = RoundTracking.all
  end

  # POST /rounds_trackings
  # POST /rounds_trackings.json
  def create
    # @round_track = RoundTracking.new(round_params)

    hash = round_params
    hash = JSON.parse(hash) if hash.is_a?(String)
    @round_track = hash

    @stations_timestamps = JSON.parse(@round_track[:round_payload])

    @stations_timestamps.each do |ts_hash|
      @round_id = @round_track[:round_executed]
      @operator = User.find_by tgi: @round_track[:current_user]
      @station_id = ts_hash['id']
      @passed_station = ts_hash['timestamp']

      @rt = RoundTracking.new(
        round_id: @round_id,
        user_id: @operator.id,
        station_id: @station_id,
        passed_station: @passed_station
      )

      @rt.save
    end

    redirect_to rounds_path, notice: 'La tournée terminée a été enregistée.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_round_tracking
    @round_track = RoundTracking.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def round_params
    params.permit(:round_payload, :current_user, :round_executed)
  end
end
