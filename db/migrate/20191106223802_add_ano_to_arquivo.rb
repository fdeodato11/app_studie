class AddAnoToArquivo < ActiveRecord::Migration[5.2]
  def change
    add_column :arquivos, :ano, :string
  end
end
