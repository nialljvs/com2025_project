class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.date :start, null: false
      t.date :end, null: false
      t.string :location, null: false
      t.float :quote, null: false
      t.boolean :paid, null: false
      t.belongs_to :customer, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
