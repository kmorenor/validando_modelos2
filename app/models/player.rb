class Player < ActiveRecord::Base
	validates :email, confirmation: true
  	validates :name, :email, presence: true
  	validates :username, length: { in: 5..20 }, uniqueness: true
  	validates :points, numericality: true
  	validates :active, inclusion: { in: [true, false] }
end
