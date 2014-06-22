class AirplanesController < ApplicationController
  before_action :set_airplane, only: [:show, :edit, :update, :destroy]
  before_action :check_admin_logged

  # GET /airplanes
  # GET /airplanes.json
  def index
    @airplanes = Airplane.all
  end

  # GET /airplanes/new
  def new
    @airplane = Airplane.new
  end

  # GET /airplanes/1/edit
  def edit
  end

  # POST /airplanes
  # POST /airplanes.json
  def create
    @airplane = Airplane.new(airplane_params)

    respond_to do |format|
      if @airplane.save
        format.html { redirect_to airplanes_url, notice: 'Airplane was successfully created.' }
        format.json { render action: 'show', status: :created, location: @airplane }
      else
        format.html { render action: 'new' }
        format.json { render json: @airplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airplanes/1
  # PATCH/PUT /airplanes/1.json
  def update
    respond_to do |format|
      if @airplane.update(airplane_params)
        format.html { redirect_to airplanes_url, notice: 'Airplane was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @airplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airplanes/1
  # DELETE /airplanes/1.json
  def destroy
    @airplane.destroy
    respond_to do |format|
      format.html { redirect_to airplanes_url }
      format.json { head :no_content }
    end
  end

  private
    # Cheks if admin are signed in
    def check_admin_logged
      redirect_to new_client_session_path unless client_signed_in? and current_client.try(:admin)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_airplane
      @airplane = Airplane.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airplane_params
      params.require(:airplane).permit(:airplane_model)
    end
end
