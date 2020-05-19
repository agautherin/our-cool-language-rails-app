class Letter < ApplicationRecord
    has_many :language_letters
    has_many :languages, through: :language_letters
end
