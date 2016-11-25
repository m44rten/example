class PersonensController < ApplicationController
  before_action :set_personen, only: [:show, :edit, :update, :destroy]

  # GET /personens
  # GET /personens.json
  def index
    @personens = Personen.all
  end

  # GET /personens/1
  # GET /personens/1.json
  def show
  end

  # GET /personens/new
  def new
    @personen = Personen.new
  end

  # GET /personens/1/edit
  def edit
  end

  # POST /personens
  # POST /personens.json
  def create
    @personen = Personen.new(personen_params)

    respond_to do |format|
      if @personen.save
        format.html { redirect_to @personen, notice: 'Personen was successfully created.' }
        format.json { render :show, status: :created, location: @personen }
      else
        format.html { render :new }
        format.json { render json: @personen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personens/1
  # PATCH/PUT /personens/1.json
  def update
    respond_to do |format|
      if @personen.update(personen_params)
        format.html { redirect_to @personen, notice: 'Personen was successfully updated.' }
        format.json { render :show, status: :ok, location: @personen }
      else
        format.html { render :edit }
        format.json { render json: @personen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personens/1
  # DELETE /personens/1.json
  def destroy
    @personen.destroy
    respond_to do |format|
      format.html { redirect_to personens_url, notice: 'Personen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personen
      @personen = Personen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personen_params
      params.require(:personen).permit(:voornaam, :achternaam, :email, :telefoon, :mobiel, :tussenvoegsel, :type, :functie, :afdeling, :bedrijf_id)
    end
end
