class CreateCommandes < ActiveRecord::Migration[5.2]
  def change
    create_table :commandes do |t|
      t.string :nom
      t.string :adresse

      t.timestamps
    end
  end
end
