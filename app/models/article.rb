class Article < ApplicationRecord
    include Visible
    has_many :comments, dependent: :destroy


    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 3}
    def abc
        VALID_STATUSES
    end


    
end
