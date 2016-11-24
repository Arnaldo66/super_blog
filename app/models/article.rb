class Article < ApplicationRecord
	validates :title, presence: true, uniqueness: true
	has_many :commentaires
end
