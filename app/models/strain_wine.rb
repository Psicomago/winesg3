class StrainWine < ApplicationRecord
  belongs_to :strain
  belongs_to :wine
  accepts_nested_attributes_for :strain, allow_destroy: true
end

