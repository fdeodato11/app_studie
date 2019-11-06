class ArquivosController < ApplicationController

  def index
    @arquivos = current_user.arquivos
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end

end
