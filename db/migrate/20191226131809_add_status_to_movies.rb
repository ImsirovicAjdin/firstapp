class AddStatusToMovies < ActiveRecord::Migration[6.0]
  def change
    # add_column(table, column, type, options)
    add_column(:movies, :status, :string)
  end
end
