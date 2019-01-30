class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name # création d'une colonne
      t.timestamps # création automatique de 2 colonnes : date de création et date de modification
    end
  end
end
