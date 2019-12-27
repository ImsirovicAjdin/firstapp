class AddForeignKey < ActiveRecord::Migration[6.0]
  def change
    # add_column(table, column, type, options)
    add_column(:users, :movie_id, :bigint)

    # add_foreign_key(from_table, to_table, options = {})
    add_foreign_key(:users, :movies)    
  end
end
