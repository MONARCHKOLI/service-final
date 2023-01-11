class Contractor < ApplicationRecord
    has_secure_password
    has_many :tasks, dependent: :destroy
    validates :name, presence: true
    validates :address, presence: true
end
