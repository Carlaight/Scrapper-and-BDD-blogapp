class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :users, index: true # un commentaire est écrit par un user sur un article
      t.belongs_to :articles, index: true
      t.text :name # on crée une colonne
      t.timestamps # création automatique de 2 colonnes : date de création et date de modification
    end
  end
end
