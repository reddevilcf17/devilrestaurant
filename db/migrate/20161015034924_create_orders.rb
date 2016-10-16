class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone_number
      t.text :address
      t.integer :delivery_fee
      t.integer :total
      t.string :coupon
      t.string :email
      t.integer :order_status

      t.timestamps
    end
  end
end
