class PractitionersController < ApplicationController
  before_action :set_practitioner, only: [:show, :edit, :update, :destroy]

  # GET /practitioners
  # GET /practitioners.json
  def index
    @practitioners = Practitioner.all
    @hash = Gmaps4rails.build_markers(@practitioners) do |practitioner, marker|
      marker.lat practitioner.latitude
      marker.lng practitioner.longitude
      marker.infowindow practitioner.position
    end
  end

  # GET /practitioners/1
  # GET /practitioners/1.json
  def show
  end

  # GET /practitioners/new
  def new
    @practitioner = Practitioner.new
  end

  # GET /practitioners/1/edit
  def edit
  end

  # POST /practitioners
  # POST /practitioners.json
  def create
    @practitioner = Practitioner.new(practitioner_params)

    respond_to do |format|
      if @practitioner.save
        format.html { redirect_to @practitioner, notice: 'Practitioner was successfully created.' }
        format.json { render :show, status: :created, location: @practitioner }
      else
        format.html { render :new }
        format.json { render json: @practitioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practitioners/1
  # PATCH/PUT /practitioners/1.json
  def update
    respond_to do |format|
      if @practitioner.update(practitioner_params)
        format.html { redirect_to @practitioner, notice: 'Practitioner was successfully updated.' }
        format.json { render :show, status: :ok, location: @practitioner }
      else
        format.html { render :edit }
        format.json { render json: @practitioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practitioners/1
  # DELETE /practitioners/1.json
  def destroy
    @practitioner.destroy
    respond_to do |format|
      format.html { redirect_to practitioners_url, notice: 'Practitioner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practitioner
      @practitioner = Practitioner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practitioner_params
      params.require(:practitioner).permit(:first_name, :last_name, :department, :position, :place_of_work, :address, :logitude, :latitude)
    end
end
