class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :desc
      t.integer :priority
      t.datetime :deadline
      t.datetime :reminder
      t.integer :status
      t.integer :notify

      t.timestamps
    end
  end
end
