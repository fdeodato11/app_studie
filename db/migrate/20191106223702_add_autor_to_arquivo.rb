class AddAutorToArquivo < ActiveRecord::Migration[5.2]
  def change
    add_column :arquivos, :autor, :string
  end
end
