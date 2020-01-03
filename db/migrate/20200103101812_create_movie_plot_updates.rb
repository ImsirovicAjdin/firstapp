class CreateMoviePlotUpdates < ActiveRecord::Migration[6.0]
  def up
    create_table :movie_plot_updates do |t|
      t.integer "user_id"
      t.integer "movie_id"
      t.string "description"
      t.timestamps
    end
    add_index("movie_plot_updates", ["user_id", "movie_id"])    
  end

  def down
    drop_table :movie_plot_updates
  end
end