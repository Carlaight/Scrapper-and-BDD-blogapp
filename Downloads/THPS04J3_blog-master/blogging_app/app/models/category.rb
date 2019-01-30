class Category < ApplicationRecord
    has_many :articles # une catégorie peux être associé à plusieurs articles
end
