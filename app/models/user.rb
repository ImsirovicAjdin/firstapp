class User < ApplicationRecord
    belongs_to :movie, {:optional => true} #, { :foreign_key => 'movie_id' }, dependent: :destroy # on_delete: :cascade
end
