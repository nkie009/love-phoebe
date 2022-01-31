class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :address
      t.string :payment

      t.timestamps
    end
  end
end
