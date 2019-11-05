class CreateLicensas < ActiveRecord::Migration[5.2]
  def change
    create_table :licensas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
