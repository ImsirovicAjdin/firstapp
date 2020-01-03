class Movie < ApplicationRecord
    # self.primary_key = 'id'

    # has_many :users
    has_and_belongs_to_many :users
    has_many :movie_plot_updates

    scope :from_newest, lambda { order("created_at DESC") }
    scope :lookup, lambda {|titlestring| where(["title LIKE ?", "%#{titlestring}%"]) }
    
end
