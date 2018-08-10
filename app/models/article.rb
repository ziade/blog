class Article < ApplicationRecord
	has_many  :answers , dependent: :destroy
	validates :title, presence: true, length:{minimum: 5}
	validates :text, presence: true,  length: {minimum: 10}
end
