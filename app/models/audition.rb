class Audition < ApplicationRecord
    has_many :audition_slots
    has_many :actors, through: :audition_slots
    belongs_to :casting_director
end
