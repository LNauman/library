class CreateCheckout < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id
      t.string :belongs_to
    end
  end
end
