class TrustTimesController < ApplicationController
  before_action :set_trust_time, only: [:show, :edit, :update, :destroy]

  # GET /trust_times
  # GET /trust_times.json
  def index
    @trust_times = TrustTime.all
  end

  # GET /trust_times/1
  # GET /trust_times/1.json
  def show
  end

  # GET /trust_times/new
  def new
    @trust_time = TrustTime.new
  end

  # GET /trust_times/1/edit
  def edit
  end

  # POST /trust_times
  # POST /trust_times.json
  def create
    @trust_time = TrustTime.new(trust_time_params)

    respond_to do |format|
      if @trust_time.save
        format.html { redirect_to @trust_time, notice: 'Trust time was successfully created.' }
        format.json { render :show, status: :created, location: @trust_time }
      else
        format.html { render :new }
        format.json { render json: @trust_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trust_times/1
  # PATCH/PUT /trust_times/1.json
  def update
    respond_to do |format|
      if @trust_time.update(trust_time_params)
        format.html { redirect_to @trust_time, notice: 'Trust time was successfully updated.' }
        format.json { render :show, status: :ok, location: @trust_time }
      else
        format.html { render :edit }
        format.json { render json: @trust_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trust_times/1
  # DELETE /trust_times/1.json
  def destroy
    @trust_time.destroy
    respond_to do |format|
      format.html { redirect_to trust_times_url, notice: 'Trust time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trust_time
      @trust_time = TrustTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trust_time_params
      params.require(:trust_time).permit(:Happy_Birthday, :notes, :birthdate, :done)
    end
end
