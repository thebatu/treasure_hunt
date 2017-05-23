class Hunt < ApplicationRecord
  belongs_to :user
  has_many :categories
  has_many :checkpoints, through: :Participations
end
