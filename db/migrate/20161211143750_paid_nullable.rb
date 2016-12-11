class PaidNullable < ActiveRecord::Migration
  def change
    change_column :events, :paid, :boolean, :null => true
  end
end
