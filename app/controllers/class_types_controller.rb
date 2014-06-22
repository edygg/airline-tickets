class ClassTypesController < ApplicationController
  before_action :set_class_type, only: [:show, :edit, :update, :destroy]
  before_action :check_admin_logged

  # GET /class_types
  # GET /class_types.json
  def index
    @class_types = ClassType.all
  end

  # GET /class_types/1
  # GET /class_types/1.json
  def show
  end

  # GET /class_types/new
  def new
    @class_type = ClassType.new
  end

  # GET /class_types/1/edit
  def edit
  end

  # POST /class_types
  # POST /class_types.json
  def create
    @class_type = ClassType.new(class_type_params)

    respond_to do |format|
      if @class_type.save
        format.html { redirect_to class_types_url, notice: 'Class type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @class_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @class_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_types/1
  # PATCH/PUT /class_types/1.json
  def update
    respond_to do |format|
      if @class_type.update(class_type_params)
        format.html { redirect_to class_types_url, notice: 'Class type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @class_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_types/1
  # DELETE /class_types/1.json
  def destroy
    @class_type.destroy
    respond_to do |format|
      format.html { redirect_to class_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Cheks if admin are signed in
    def check_admin_logged
      redirect_to new_client_session_path unless client_signed_in? and current_client.try(:admin)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_class_type
      @class_type = ClassType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_type_params
      params.require(:class_type).permit(:name, :rate)
    end
end
