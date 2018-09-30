class LigneCommande < ApplicationRecord
  
  belongs_to :commande
  belongs_to :pizza
end
