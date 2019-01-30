class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :users, index: true # un like est effectué par un user sur un article
      t.belongs_to :articles, index: true 
      t.timestamps # création automatique de 2 colonnes : date de création et date de modification
    end
  end
end
