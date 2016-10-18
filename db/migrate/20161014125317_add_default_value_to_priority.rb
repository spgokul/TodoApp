class AddDefaultValueToPriority < ActiveRecord::Migration
  def change
    change_column :todos, :priority, :integer, :default => 3 
  end
end
