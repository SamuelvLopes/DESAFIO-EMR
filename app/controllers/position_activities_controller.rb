class PositionActivitiesController < ApplicationController
  before_action :set_position_activity, only: %i[ show edit update destroy ]

  # GET /position_activities or /position_activities.json
  def index
    @position_activities = PositionActivitie.all
  end

  # GET /position_activities/1 or /position_activities/1.json
  def show
  end

  # GET /position_activities/new
  def new
    @position_activity = PositionActivitie.new
  end

  # GET /position_activities/1/edit
  def edit
  end

  # POST /position_activities or /position_activities.json
  def create
    @position_activity = PositionActivitie.new(position_activity_params)

    respond_to do |format|
      if @position_activity.save
        format.html { redirect_to position_activity_url(@position_activity), notice: "Position activitie was successfully created." }
        format.json { render :show, status: :created, location: @position_activity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @position_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /position_activities/1 or /position_activities/1.json
  def update
    respond_to do |format|
      if @position_activity.update(position_activity_params)
        format.html { redirect_to position_activity_url(@position_activity), notice: "Position activitie was successfully updated." }
        format.json { render :show, status: :ok, location: @position_activity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @position_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /position_activities/1 or /position_activities/1.json
  def destroy
    @position_activity.destroy

    respond_to do |format|
      format.html { redirect_to position_activities_url, notice: "Position activitie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position_activity
      @position_activity = PositionActivitie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def position_activity_params
      params.require(:position_activity).permit(:id_position, :id_activy)
    end
end
