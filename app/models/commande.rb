class Commande < ApplicationRecord
  
  validates :nom, presence: true
  validates :adresse, presence: true
  
  has_many :ligne_commandes
  has_many :pizzas, through: :ligne_commandes
end
