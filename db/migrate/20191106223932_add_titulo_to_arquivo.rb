class AddTituloToArquivo < ActiveRecord::Migration[5.2]
  def change
    add_column :arquivos, :titulo, :string
  end
end
