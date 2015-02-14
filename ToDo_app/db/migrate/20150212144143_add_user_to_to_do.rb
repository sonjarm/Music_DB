class AddUserToToDo < ActiveRecord::Migration
  def change
    add_column :dos, :user_id, :integer
  end
end
