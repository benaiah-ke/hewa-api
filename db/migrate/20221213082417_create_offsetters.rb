class CreateOffsetters < ActiveRecord::Migration[7.0]
  def change
    create_table :offsetters do |t|
      t.integer :user_id
      t.integer :no_of_trees

      t.timestamps
    end
  end
end
