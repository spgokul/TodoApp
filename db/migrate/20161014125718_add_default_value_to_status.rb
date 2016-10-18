class AddDefaultValueToStatus < ActiveRecord::Migration
  def change
  	change_column :todos, :status, :integer, :default => 0
  end
end
