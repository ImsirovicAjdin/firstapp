class Movie < ApplicationRecord
    # self.primary_key = 'id'

    scope :from_newest, lambda { order("created_at DESC") }
    scope :lookup, lambda {|titlestring| where(["title LIKE ?", "%#{titlestring}%"]) }
    
end
