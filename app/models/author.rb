class Author < ApplicationRecord
    has_many :books #, dependent: :destroy

    #has_many :books, -> {order(year_published: :desc)}
    
end
