class ChangeUserIdToIntegerEmmitters < ActiveRecord::Migration[7.0]
  def change
    change_column :emmitters, :user_id, :integer
  end
end
