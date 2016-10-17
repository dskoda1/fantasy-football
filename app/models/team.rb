class Team < ApplicationRecord
    has_many :draft_records
    has_many :players, through: :draft_records
    validates :name, presence: true
end
