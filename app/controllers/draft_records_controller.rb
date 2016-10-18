class DraftRecordsController < ApplicationController
  before_action :set_draft_record, only: [:show, :edit, :update, :destroy]

  # GET /draft_records
  # GET /draft_records.json
  def index
    @draft_records = DraftRecord.all
  end

  # GET /draft_records/1
  # GET /draft_records/1.json
  def show
  end

  # GET /draft_records/new
  def new
    @draft_record = DraftRecord.new
  end

  # GET /draft_records/1/edit
  def edit
  end

  # POST /draft_records
  # POST /draft_records.json
  def create
    @draft_record = DraftRecord.new(draft_record_params)

    respond_to do |format|
      if @draft_record.save
        format.html { redirect_to @draft_record, notice: 'Draft record was successfully created.' }
        format.json { render :show, status: :created, location: @draft_record }
      else
        format.html { render :new }
        format.json { render json: @draft_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /draft_records/1
  # PATCH/PUT /draft_records/1.json
  def update
    respond_to do |format|
      if @draft_record.update(draft_record_params)
        format.html { redirect_to @draft_record, notice: 'Draft record was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft_record }
      else
        format.html { render :edit }
        #format.html { render :edit }
        format.json { render json: @draft_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_records/1
  # DELETE /draft_records/1.json
  def destroy
    @draft_record.destroy
    respond_to do |format|
      format.html { redirect_to draft_records_url, notice: 'Draft record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_record
      @draft_record = DraftRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def draft_record_params
      params.require(:draft_record).permit(:player_id, :team_id)
    end
end
