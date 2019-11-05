class AddTelefoneToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :telefone, :string
  end
end
