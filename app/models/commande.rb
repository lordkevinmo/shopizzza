class Commande < ApplicationRecord
  
  has_many :ligne_commandes
  has_many :pizzas, through: :ligne_commandes
end
