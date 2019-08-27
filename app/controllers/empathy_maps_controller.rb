class EmpathyMapsController < ApplicationController
  before_action :set_empathy_map, only: [:show, :edit, :update, :destroy]

  # GET /empathy_maps
  # GET /empathy_maps.json
  def index
    @empathy_maps = EmpathyMap.all
  end

  # GET /empathy_maps/1
  # GET /empathy_maps/1.json
  def show
  end

  # GET /empathy_maps/new
  def new
    @empathy_map = EmpathyMap.new
  end

  # GET /empathy_maps/1/edit
  def edit
  end

  # POST /empathy_maps
  # POST /empathy_maps.json
  def create
    @empathy_map = EmpathyMap.new(empathy_map_params)

    respond_to do |format|
      if @empathy_map.save
        format.html { redirect_to @empathy_map, notice: 'Empathy map was successfully created.' }
        format.json { render :show, status: :created, location: @empathy_map }
      else
        format.html { render :new }
        format.json { render json: @empathy_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empathy_maps/1
  # PATCH/PUT /empathy_maps/1.json
  def update
    respond_to do |format|
      if @empathy_map.update(empathy_map_params)
        format.html { redirect_to @empathy_map, notice: 'Empathy map was successfully updated.' }
        format.json { render :show, status: :ok, location: @empathy_map }
      else
        format.html { render :edit }
        format.json { render json: @empathy_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empathy_maps/1
  # DELETE /empathy_maps/1.json
  def destroy
    @empathy_map.destroy
    respond_to do |format|
      format.html { redirect_to empathy_maps_url, notice: 'Empathy map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empathy_map
      @empathy_map = EmpathyMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empathy_map_params
      params.require(:empathy_map).permit(:user_id, :name)
    end
end
