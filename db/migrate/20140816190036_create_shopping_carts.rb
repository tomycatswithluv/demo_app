class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.string :product
      t.decimal :price, :precision => 7, :scale => 2

      t.timestamps
    end
  end
end
