class Manifest < ApplicationRecord
    belongs_to :assembly
    belongs_to :part
    after_create :publish

    def publish
        self.update(published_at: Time.now)
    end
end
