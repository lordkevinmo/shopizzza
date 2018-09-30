class LigneCommande < ApplicationRecord
  
  belongs_to :commande, inverse_of: :ligne_commandes
  belongs_to :pizza, inverse_of: :ligne_commandes
end
