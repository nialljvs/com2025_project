class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.float :quote, null: false
      t.belongs_to :event, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
