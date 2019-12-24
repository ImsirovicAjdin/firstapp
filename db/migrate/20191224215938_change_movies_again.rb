class ChangeMoviesAgain < ActiveRecord::Migration[6.0]
  def up
    rename_table("greatest_movies", "movies")
  end

  def down
    rename_table("movies", "greatest_movies")
  end
end
