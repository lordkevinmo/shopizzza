class Commande < ApplicationRecord
  
  has_many :pizzas, through: :ligne_commandes
end
