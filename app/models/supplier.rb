class Supplier < ApplicationRecord
    has_one :account
=begin    
    has_many :books
    has_many :authors, through: :books
=end

end
