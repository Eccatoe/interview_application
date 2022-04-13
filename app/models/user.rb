class User < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :score, numericality: true
    def full_name
        [first_name, last_name].join(" ")
    end
end
