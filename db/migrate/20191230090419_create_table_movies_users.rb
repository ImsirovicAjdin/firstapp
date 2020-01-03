class CreateTableMoviesUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :movies_users, :id => false do |t|
      t.integer "movie_id"
      t.integer "user_id"
    end
    add_index("movies_users", ["user_id", "movie_id"])
  end

  def down
    drop_table :movies_users

  end
end