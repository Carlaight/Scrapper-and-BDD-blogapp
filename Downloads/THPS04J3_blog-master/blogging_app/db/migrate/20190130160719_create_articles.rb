class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t| # création d'un tableau article
      t.belongs_to :user, index: true # un article est créé par un utilisateur
      t.string :title # ajout de 2 colonnes
      t.text :content
      t.timestamps# création automatique de 2 colonnes : date de création et date de modification
    end
  end
end
