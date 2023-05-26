class AtividadesController < ApplicationController
#  before_action :authenticate_user!, except: [:about]
  load_and_authorize_resource
  before_action :set_atividade, only: %i[ show edit update destroy ]

  # GET /atividades or /atividades.json
  def index
    #Nao quero que mostre todas, somente as do atleta logado.
    #Se for adm tem que mostrar todas
    #@atividades = Atividade.all    
    if current_user.papel == 'adm'
      @atividades = Atividade.all
    else  
      @atividades = Atividade.where(user_id: current_user.id)
    end
  end

  # GET /atividades/1 or /atividades/1.json
  def show
  end

  # GET /atividades/new
  def new
    @atividade = Atividade.new
  end

  # GET /atividades/1/edit
  def edit
  end

  # POST /atividades or /atividades.json
  def create
    @atividade = Atividade.new(atividade_params)
    #pegando o ID do usuarios logado
    @atividade.user_id = current_user.id

    respond_to do |format|
      if @atividade.save
        format.html { redirect_to atividade_url(@atividade), notice: "Atividade was successfully created." }
        format.json { render :show, status: :created, location: @atividade }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atividades/1 or /atividades/1.json
  def update
    respond_to do |format|
      if @atividade.update(atividade_params)
        format.html { redirect_to atividade_url(@atividade), notice: "Atividade was successfully updated." }
        format.json { render :show, status: :ok, location: @atividade }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atividade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atividades/1 or /atividades/1.json
  def destroy
    @atividade.destroy

    respond_to do |format|
      format.html { redirect_to atividades_url, notice: "Atividade was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atividade
      @atividade = Atividade.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atividade_params
      params.require(:atividade).permit(:titulo, :data, :inicio, :fim, :distancia, :user_id)
    end
end
