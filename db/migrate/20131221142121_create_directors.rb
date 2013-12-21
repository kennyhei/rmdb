class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.date :birthday

      t.timestamps
    end
  end
end
