class AddOffsetterIdToCarbonProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :carbon_projects, :offsetter_id, :integer
  end
end
