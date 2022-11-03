class HeroPower < ApplicationRecord
	belongs_to :hero
	belongs_to :power
	validates :strength, inclusion: {in: ['Strong', 'Weak', 'Average'], message: "Not a valid strength attribute"}
end
