class AssignaturesController < ApplicationController
  before_action :authenticate_administrator!
  before_action :set_assignature, only: [:show, :edit, :update, :destroy]

  # GET /assignatures
  # GET /assignatures.json
  def index
    @assignatures = Assignature.all
  end

  # GET /assignatures/1
  # GET /assignatures/1.json
  def show
  end

  # GET /assignatures/new
  def new
    @assignature = Assignature.new
  end

  # GET /assignatures/1/edit
  def edit
  end

  # POST /assignatures
  # POST /assignatures.json
  def create
    @assignature = Assignature.new(assignature_params)

    respond_to do |format|
      if @assignature.save
        format.html { redirect_to @assignature, notice: 'Assignature was successfully created.' }
        format.json { render :show, status: :created, location: @assignature }
      else
        format.html { render :new }
        format.json { render json: @assignature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignatures/1
  # PATCH/PUT /assignatures/1.json
  def update
    respond_to do |format|
      if @assignature.update(assignature_params)
        format.html { redirect_to @assignature, notice: 'Assignature was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignature }
      else
        format.html { render :edit }
        format.json { render json: @assignature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignatures/1
  # DELETE /assignatures/1.json
  def destroy
    @assignature.destroy
    respond_to do |format|
      format.html { redirect_to assignatures_url, notice: 'Assignature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignature
      @assignature = Assignature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignature_params
      params.require(:assignature).permit(:name)
    end
end
