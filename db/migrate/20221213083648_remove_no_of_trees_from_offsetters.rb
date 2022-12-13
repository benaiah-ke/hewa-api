class RemoveNoOfTreesFromOffsetters < ActiveRecord::Migration[7.0]
  def change
    remove_column :offsetters, :no_of_trees
  end
end
