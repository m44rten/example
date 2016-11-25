class PrijsController < ApplicationController
  before_action :set_prij, only: [:show, :edit, :update, :destroy]

  # GET /prijs
  # GET /prijs.json
  def index
    @prijs = Prij.all
  end

  # GET /prijs/1
  # GET /prijs/1.json
  def show
  end

  # GET /prijs/new
  def new
    @prij = Prij.new
  end

  # GET /prijs/1/edit
  def edit
  end

  # POST /prijs
  # POST /prijs.json
  def create
    @prij = Prij.new(prij_params)

    respond_to do |format|
      if @prij.save
        format.html { redirect_to @prij, notice: 'Prij was successfully created.' }
        format.json { render :show, status: :created, location: @prij }
      else
        format.html { render :new }
        format.json { render json: @prij.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prijs/1
  # PATCH/PUT /prijs/1.json
  def update
    respond_to do |format|
      if @prij.update(prij_params)
        format.html { redirect_to @prij, notice: 'Prij was successfully updated.' }
        format.json { render :show, status: :ok, location: @prij }
      else
        format.html { render :edit }
        format.json { render json: @prij.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prijs/1
  # DELETE /prijs/1.json
  def destroy
    @prij.destroy
    respond_to do |format|
      format.html { redirect_to prijs_url, notice: 'Prij was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prij
      @prij = Prij.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prij_params
      params.require(:prij).permit(:product_nummer, :naam)
    end
end
