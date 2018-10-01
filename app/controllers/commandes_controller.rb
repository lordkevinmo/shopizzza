class CommandesController < ApplicationController
  
  skip_before_action :verify_authenticity_token, :only => [:create]
  
  def create 
    p "CommandesController"
    @nom = params[:nom]
    @adresse = params[:adresse]
    p @adresse
    @pizzas = params[:pizzas]
    newCommande = Commande.new(:nom => @nom, :adresse => @adresse)
    newCommande.save
    p @pizzas
    @erros="Erros : [";
      @pizzas.each do |pizza|
        @commandePizza = Pizza.where(nom: pizza).first
        if @commandePizza.nil?
          @erros= @erros+" - Aucune pizza avec le nom = " +pizza
          p @erros
          next
        end 
        p @commandePizza
        newLigneCommande = LigneCommande.new
        newLigneCommande.order = newCommande
        newLigneCommande.pizza = @commandePizza
        newLigneCommande.save
      end
      @erros = @erros + "]"
   end
  
    def view
      @commandes= []
      @touscommandes = Commande.all
      @touscommandes.each do |comm|
        pizzas = []
        @orderlines=LigneCommande.where(commande: comm)
        @lignecommandes.each do |lignecommande|
            pizza = Pizza.find(lignecommande[:pizza_id])
            pizzas.push(pizza)
        end
        p "commandes"
        @commandes.push({commande: comm ,pizzas: pizzas})
        p pizzas
      end
    end
  
end
