class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :studio
      t.float :rating

      t.timestamps
    end
  end
end
