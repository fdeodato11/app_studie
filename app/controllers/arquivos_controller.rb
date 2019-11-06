class ArquivosController < ApplicationController

  def index
    @arquivos = current_user.arquivos
  end

  def new
    @arquivo = Arquivo.new
  end

  # GET /arquivos/1/edit
  def edit
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
        byebug
        format.html { redirect_to arquivos_url, notice: 'Arquivo was successfully created.' }
        format.json { render :idex, status: :created, location: @arquivo }
      else
        format.html { render :new }
        format.json { render json: @arquivo.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  private 

  def arquivo_params
    params.require(:arquivo).permit(:nome)
  end

end
