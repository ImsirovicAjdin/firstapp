class RemoveStatusFromMovies < ActiveRecord::Migration[6.0]
  def change
    # remove_column(table, column)
    remove_column(:movies, :status)
  end
end
