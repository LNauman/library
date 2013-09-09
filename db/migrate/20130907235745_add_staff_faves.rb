class AddStaffFaves < ActiveRecord::Migration
  def up
    add_column :books, :staff_faves, :boolean
  end
  def down
    remove_column :books, :staff_faves
  end
end
