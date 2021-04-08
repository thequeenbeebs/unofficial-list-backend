class Actor < ApplicationRecord
    has_many :audition_slots
    has_many :auditions, through: :audition_slots

    has_secure_password
end
