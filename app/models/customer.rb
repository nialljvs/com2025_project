class Customer < ActiveRecord::Base
    has_many :events, dependent: :destroy
    validates :forename, :surname, :email, :phone, presence: true
    validates :email, uniqueness: true
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
