class Wine < ApplicationRecord
    validates :name , presence: :true
    has_many :strain_wines
    has_many :strains, through: :strain_wines, dependent: :destroy
    accepts_nested_attributes_for strain_wines, allow_destroy: true
end
