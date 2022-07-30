class Strain < ApplicationRecord
    validates :name , presence: :true
    has_many :strain_wines
    
end
