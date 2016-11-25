class BedrijfsController < ApplicationController
  before_action :set_bedrijf, only: [:show, :edit, :update, :destroy]

  # GET /bedrijfs
  # GET /bedrijfs.json
  def index
    @bedrijfs = Bedrijf.all
  end

  # GET /bedrijfs/1
  # GET /bedrijfs/1.json
  def show
  end

  # GET /bedrijfs/new
  def new
    @bedrijf = Bedrijf.new
  end

  # GET /bedrijfs/1/edit
  def edit
  end

  # POST /bedrijfs
  # POST /bedrijfs.json
  def create
    @bedrijf = Bedrijf.new(bedrijf_params)

    respond_to do |format|
      if @bedrijf.save
        format.html { redirect_to @bedrijf, notice: 'Bedrijf was successfully created.' }
        format.json { render :show, status: :created, location: @bedrijf }
      else
        format.html { render :new }
        format.json { render json: @bedrijf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bedrijfs/1
  # PATCH/PUT /bedrijfs/1.json
  def update
    respond_to do |format|
      if @bedrijf.update(bedrijf_params)
        format.html { redirect_to @bedrijf, notice: 'Bedrijf was successfully updated.' }
        format.json { render :show, status: :ok, location: @bedrijf }
      else
        format.html { render :edit }
        format.json { render json: @bedrijf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bedrijfs/1
  # DELETE /bedrijfs/1.json
  def destroy
    @bedrijf.destroy
    respond_to do |format|
      format.html { redirect_to bedrijfs_url, notice: 'Bedrijf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bedrijf
      @bedrijf = Bedrijf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bedrijf_params
      params.require(:bedrijf).permit(:bedrijfs_naam, :kvk, :email, :website, :straat, :nummer, :postcode, :land, :plaats, :prijs_id)
    end
end
