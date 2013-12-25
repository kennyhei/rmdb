class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
	  t.integer :runtime
      t.string :studio
	  t.integer :director_id

      t.timestamps
    end
  end
end
