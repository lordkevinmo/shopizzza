class CreateLigneCommandes < ActiveRecord::Migration[5.2]
  def change
    create_table :ligne_commandes do |t|
      t.references :commande, foreign_key: true
      t.references :pizza, foreign_key: true

      t.timestamps
    end
  end
end
