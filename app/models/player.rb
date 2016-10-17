class Player < ApplicationRecord
  belongs_to :position
  validates :name, presence: true
end
