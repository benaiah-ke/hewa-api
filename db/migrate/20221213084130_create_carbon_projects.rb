class CreateCarbonProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :carbon_projects do |t|
      t.integer :user_id
      t.integer :no_of_trees
      t.integer :avarage_age
      t.string :location

      t.timestamps
    end
  end
end
