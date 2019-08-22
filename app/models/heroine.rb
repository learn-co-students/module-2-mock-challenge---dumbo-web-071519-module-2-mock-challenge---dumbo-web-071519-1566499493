class Heroine < ApplicationRecord

    #validates for unique super name, no two heroines will have the same one
    validates :super_name, uniqueness: true

    belongs_to :power
end
