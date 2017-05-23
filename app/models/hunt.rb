class Hunt < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :checkpoints
end
