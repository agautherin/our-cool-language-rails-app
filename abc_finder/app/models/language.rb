class Language < ApplicationRecord
    has_many :language_letters
    has_many :letters, through: :language_letters
end
