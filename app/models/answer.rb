class Answer < ApplicationRecord
  belongs_to :article
  validates :commenter , presence: true  , length:{minimum: 4}
  validates :body , presence: true, length:{minimum: 15}
  
end
