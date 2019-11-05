class CreateArquivoLicensas < ActiveRecord::Migration[5.2]
  def change
    create_table :arquivo_licensas do |t|
      t.references :arquivo, foreign_key: true
      t.references :licensa, foreign_key: true

      t.timestamps
    end
  end
end
