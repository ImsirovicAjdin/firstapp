class User < ApplicationRecord
    # belongs_to :movie, {:optional => true} #, { :foreign_key => 'movie_id' }, dependent: :destroy # on_delete: :cascade
    has_and_belongs_to_many :movies
    has_many :movie_plot_updates
end
