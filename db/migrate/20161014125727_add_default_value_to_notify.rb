class AddDefaultValueToNotify < ActiveRecord::Migration
  def change
  	change_column :todos, :notify, :integer, :default => 0
  end
end
