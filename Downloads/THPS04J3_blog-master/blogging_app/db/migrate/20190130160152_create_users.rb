class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t| # création d'un tableau user
      t.string :first_name 
      t.string :last_name # ajout de 3 colonnes
      t.string :email
      t.timestamps # création automatique de 2 colonnes : date de création et date de modification
    end
  end
end
