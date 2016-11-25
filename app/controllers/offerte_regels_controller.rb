class OfferteRegelsController < ApplicationController
  before_action :set_offerte_regel, only: [:show, :edit, :update, :destroy]

  # GET /offerte_regels
  # GET /offerte_regels.json
  def index
    @offerte_regels = OfferteRegel.all
  end

  # GET /offerte_regels/1
  # GET /offerte_regels/1.json
  def show
  end

  # GET /offerte_regels/new
  def new
    @offerte_regel = OfferteRegel.new
  end

  # GET /offerte_regels/1/edit
  def edit
  end

  # POST /offerte_regels
  # POST /offerte_regels.json
  def create
    @offerte_regel = OfferteRegel.new(offerte_regel_params)

    respond_to do |format|
      if @offerte_regel.save
        format.html { redirect_to @offerte_regel, notice: 'Offerte regel was successfully created.' }
        format.json { render :show, status: :created, location: @offerte_regel }
      else
        format.html { render :new }
        format.json { render json: @offerte_regel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offerte_regels/1
  # PATCH/PUT /offerte_regels/1.json
  def update
    respond_to do |format|
      if @offerte_regel.update(offerte_regel_params)
        format.html { redirect_to @offerte_regel, notice: 'Offerte regel was successfully updated.' }
        format.json { render :show, status: :ok, location: @offerte_regel }
      else
        format.html { render :edit }
        format.json { render json: @offerte_regel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offerte_regels/1
  # DELETE /offerte_regels/1.json
  def destroy
    @offerte_regel.destroy
    respond_to do |format|
      format.html { redirect_to offerte_regels_url, notice: 'Offerte regel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offerte_regel
      @offerte_regel = OfferteRegel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offerte_regel_params
      params.require(:offerte_regel).permit(:artikel, :omschrijving, :aantal, :prijs, :post, :offerte_id)
    end
end
