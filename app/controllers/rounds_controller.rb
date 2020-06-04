class RoundsController < ApplicationController
  before_action :set_round, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /rounds
  # GET /rounds.json
  def index
    @rounds = Round.all
  end

  # GET /rounds/1
  # GET /rounds/1.json
  def show
  end

  # GET /rounds/new
  def new
    @round = Round.new
  end

  # GET /rounds/1/edit
  def edit
  end

  def round_payload
    puts params[:payload]
  end

  # POST /rounds
  # POST /rounds.json
  def create
    @round = Round.new(round_params)
    @round.stations = Station.find(params[:station_ids]) if params[:station_ids]
    # TODO: add schedules to create layer
    respond_to do |format|
      if @round.save
        format.html { redirect_to @round, notice: 'La tournée a été créé avec succès.' }
        format.json { render :show, status: :created, location: @round }
      else
        format.html { render :new }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rounds/1
  # PATCH/PUT /rounds/1.json
  def update
    @round.stations = Station.find(params[:station_ids]) if params[:station_ids]
    puts @round.stations
    respond_to do |format|
      if @round.update(round_params)
        format.html { redirect_to @round, notice: 'La tournée a été mise à jour avec succès.' }
        format.json { render :show, status: :ok, location: @round }
      else
        format.html { render :edit }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rounds/1
  # DELETE /rounds/1.json
  def destroy
    @round.destroy
    respond_to do |format|
      format.html { redirect_to rounds_url, notice: 'Round was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_round
    @round = Round.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def round_params
    params.require(:round).permit(:round_name, :round_payload)
  end
end
