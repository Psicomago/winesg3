class Oenologist < ApplicationRecord
    has_many :wine_oenologists
    has_many :wines, through: :wines_oeneologists
end
