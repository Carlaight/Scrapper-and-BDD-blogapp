class Like < ApplicationRecord
    belongs_to :user,  optional: true # un like a été effectué par un utilisateur
	belongs_to :article, optional: true # un like concerne un article
end
