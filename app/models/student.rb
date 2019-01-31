class Student < ApplicationRecord
        validates :regno, presence: true,
        validates :name, presence: true,
        validates :telephone, presence: true,
        validates :address, presence: true,
                          length: { minimum: 5 }
end
