class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :forename, null: false
      t.string :surname, null: false
      t.string :email, null: false, unique: true
      t.string :phone, null: false

      t.timestamps null: false
    end
  end
end
