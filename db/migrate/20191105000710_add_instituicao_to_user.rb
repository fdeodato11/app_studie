class AddInstituicaoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :instituicao, :string
  end
end
