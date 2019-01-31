class Studentform < ApplicationRecord
    validates :regno, presence: true,
                          length: { minimum: 5 }
end
