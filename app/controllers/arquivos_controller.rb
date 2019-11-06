class ArquivosController < ApplicationController
  before_action :set_arquivo, only: [:show, :edit, :update, :destroy]
  
  def index
    @arquivos = current_user.arquivos
  end

  def new
    @arquivo = Arquivo.new
  end

  # GET /arquivos/1/edit
  def edit
  end

  def update
    respond_to do |format|
      if @arquivo.update(arquivo_params)
        format.html { redirect_to @arquivo, notice: 'arquivo was successfully updated.' }
        format.json { render :show, status: :ok, location: @arquivo }
      else
        format.html { render :edit }
        format.json { render json: @arquivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /arquivos
  # POST /arquivos.json
  def create
    @arquivo = Arquivo.new(arquivo_params)
    respond_to do |format|
      if @arquivo.save
        ligacao = UserArquivo.new
        ligacao.arquivo_id = @arquivo.id
        ligacao.user_id = current_user.id
        ligacao.save! 
        format.html { redirect_to arquivos_url, notice: 'Arquivo was successfully created.' }
        format.json { render :idex, status: :created, location: @arquivo }
      else
        format.html { render :new }
        format.json { render json: @arquivo.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @arquivos = Arquivo.all
  end

  private 

  def set_arquivo
    @arquivo = Arquivo.find(params[:id])
  end

  def arquivo_params
    params.require(:arquivo).permit(:nome, :ano, :titulo, :autor)
  end
end
