class Wine < ApplicationRecord
    validates :name , presence: true, uniqueness: true
    has_many :strain_wines, dependent: :destroy
    has_many :strains, through: :strain_wines
    accepts_nested_attributes_for :strain_wines, reject_if: :all_blank, allow_destroy: true
end

def to_s
    name
end