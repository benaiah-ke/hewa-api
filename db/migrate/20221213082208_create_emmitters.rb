class CreateEmmitters < ActiveRecord::Migration[7.0]
  def change
    create_table :emmitters do |t|
      t.string :user_id
      t.string :annual_emmission

      t.timestamps
    end
  end
end
