class EmpathyMapRecordsController < ApplicationController
  before_action :set_empathy_map_record, only: [:show, :edit, :update, :destroy]

  # GET /empathy_map_records
  # GET /empathy_map_records.json
  def index
    @empathy_map_records = EmpathyMapRecord.all
  end

  # GET /empathy_map_records/1
  # GET /empathy_map_records/1.json
  def show
  end

  # GET /empathy_map_records/new
  def new
    @empathy_map = EmpathyMap.create(user: current_user)
    @empathy_map_record = EmpathyMapRecord.new(empathy_map_id: @empathy_map.id)
  end

  # GET /empathy_map_records/1/edit
  def edit
  end

  # POST /empathy_map_records
  # POST /empathy_map_records.json
  def create
    @empathy_map = EmpathyMap.find_or_create_by(id: empathy_map_record_params[:empathy_map_id])
    @empathy_map_record = EmpathyMapRecord.new(empathy_map_record_params.merge(empathy_map_id: @empathy_map.id))

    respond_to do |format|
      if @empathy_map_record.save
        format.html { redirect_to @empathy_map_record, notice: 'Empathy map record was successfully created.' }
        format.json { render :show, status: :created, location: @empathy_map_record }
      else
        format.html { render :new }
        format.json { render json: @empathy_map_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empathy_map_records/1
  # PATCH/PUT /empathy_map_records/1.json
  def update
    respond_to do |format|
      if @empathy_map_record.update(empathy_map_record_params)
        format.html { redirect_to @empathy_map_record, notice: 'Empathy map record was successfully updated.' }
        format.json { render :show, status: :ok, location: @empathy_map_record }
      else
        format.html { render :edit }
        format.json { render json: @empathy_map_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empathy_map_records/1
  # DELETE /empathy_map_records/1.json
  def destroy
    @empathy_map_record.destroy
    respond_to do |format|
      format.html { redirect_to empathy_map_records_url, notice: 'Empathy map record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empathy_map_record
      @empathy_map_record = EmpathyMapRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empathy_map_record_params
      params.require(:empathy_map_record).permit(:empathy_map_id, :record_type, :group, :position, :text)
    end
end
