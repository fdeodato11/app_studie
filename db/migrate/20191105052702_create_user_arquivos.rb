class CreateUserArquivos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_arquivos do |t|
      t.references :arquivo, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
