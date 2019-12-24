class ChangeMovies < ActiveRecord::Migration[6.0]
  def up
    rename_table("movies", "greatest_movies")
    rename_column("greatest_movies", "description", "plot_description")
  end

  def down
    rename_column("greatest_movies", "plot_description", "description")
    rename_table("greatest_movies", "movies")
  end
end
