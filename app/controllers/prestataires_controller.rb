class PrestatairesController < ApplicationController
  before_action :set_prestataire, only: [:show, :edit, :update, :destroy]

  # GET /prestataires
  # GET /prestataires.json
  def index
    @prestataires = Prestataire.all
  end

  # GET /prestataires/1
  # GET /prestataires/1.json
  def show
      @prestataire = Prestataire.find(params[:id])
  end

  # GET /prestataires/new
  def new
    @prestataire = Prestataire.new
    redirect_to prestataires_path, warning: "You are not authorized" unless admin_signed_in?
  end

  # GET /prestataires/1/edit
  def edit
    redirect_to prestataires_path, warning: "You are not authorized" unless admin_signed_in?
  end

  # POST /prestataires
  # POST /prestataires.json
  def create
    @prestataire = Prestataire.new(prestataire_params)

    respond_to do |format|
      if @prestataire.save
        format.html { redirect_to @prestataire, notice: 'Prestataire was successfully created.' }
        format.json { render :show, status: :created, location: @prestataire }
      else
        format.html { render :new }
        format.json { render json: @prestataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prestataires/1
  # PATCH/PUT /prestataires/1.json
  def update
    respond_to do |format|
      if @prestataire.update(prestataire_params)
        format.html { redirect_to @prestataire, notice: 'Prestataire was successfully updated.' }
        format.json { render :show, status: :ok, location: @prestataire }
      else
        format.html { render :edit }
        format.json { render json: @prestataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestataires/1
  # DELETE /prestataires/1.json
  def destroy
    @prestataire.destroy
    respond_to do |format|
      format.html { redirect_to prestataires_url, notice: 'Prestataire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestataire
      @prestataire = Prestataire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prestataire_params
      params.require(:prestataire).permit(:categorie, :nom, :remise, :prestation, :description, :ville, :imageurl, :email)
    end
end
