class Player < ApplicationRecord
    has_many :draft_records
    has_many :teams, through: :draft_records

    belongs_to :position
    validates :name, presence: true
end
