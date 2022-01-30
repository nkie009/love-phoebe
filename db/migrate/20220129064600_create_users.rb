class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :phone
      t.text :address
      t.text :password_digest

      t.timestamps
    end
  end
end
