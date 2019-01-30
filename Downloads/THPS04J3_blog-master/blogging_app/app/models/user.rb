class User < ApplicationRecord
	has_many :articles # un utilisateur peut écrire plusieurs articles
	has_many :comments # un utilisateur peut écrire plusieurs commentaires
	has_many :likes # un utilisateur peut liker plusieurs articles
end
