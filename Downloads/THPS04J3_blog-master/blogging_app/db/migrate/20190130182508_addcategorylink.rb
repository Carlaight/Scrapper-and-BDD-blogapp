class Addcategorylink < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :category, foreign_key: true # ajout de la foreign key du tableau categrory dans le tableau articles
  end
end
