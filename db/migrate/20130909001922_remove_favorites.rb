class RemoveFavorites < ActiveRecord::Migration
  def up
    remove_column :books, :staff_faves
  end

  def down
    add_column :books, :staff_faves, :boolean
  end
end
