class CreateMovies < ActiveRecord::Migration[6.0]
  def up
    create_table :movies do |t|
      t.column "title", :string, :limit => 150
      t.column "description", :string, :limit => 300
      t.column "rating", :integer, :limit => 5
      t.timestamps
    end
  end

  def down
    drop_table :movies
  end

end