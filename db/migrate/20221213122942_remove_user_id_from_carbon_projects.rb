class RemoveUserIdFromCarbonProjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :carbon_projects, :user_id
  end
end
