# frozen_string_literal: true

class ClimbsController < OpenReadController
  before_action :set_climb, only: %i[show update destroy]

  # GET /climbs
  def index
    @climbs = current_user.climbs

    render json: @climbs
  end

  # GET /climbs/1
  def show
    render json: @climbs
  end

  # POST /climbs
  def create
    @climb = current_user.climbs.build(climb_params)

    if @climb.save
      render json: @climb, status: :created, location: @climb
    else
      render json: @climb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /climbs/1
  def update
    if @climb.update(climb_params)
      render json: @climb
    else
      render json: @climb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /climbs/1
  def destroy
    @climb.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_climb
    @climb = current_user.climbs.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def climb_params
    params.require(:climb).permit(:route_name, :route_grade,
                                  :number_of_tries, :did_send, :user_id)
  end
end
