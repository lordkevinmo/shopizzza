class Pizza < ApplicationRecord
  
  has_many :ligne_commandes
  has_many :commandes, through: :ligne_commandes
end
