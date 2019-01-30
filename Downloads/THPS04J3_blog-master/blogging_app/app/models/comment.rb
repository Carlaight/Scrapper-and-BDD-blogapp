class Comment < ApplicationRecord
    belongs_to :user,  optional: true # un commentaire a été écrit par un utilisateur
	belongs_to :article,  optional: true # un commentaire est écrit sur un article
end
