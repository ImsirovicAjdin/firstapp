class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :username
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
