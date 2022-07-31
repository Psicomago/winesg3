class Strain < ApplicationRecord
    validates :name , presence: true, uniqueness: true
    has_many :strain_wines
    has_many :wines, through: :strain_wines

end
