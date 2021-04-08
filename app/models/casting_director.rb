class CastingDirector < ApplicationRecord
    has_many :auditions

    has_secure_password
end
