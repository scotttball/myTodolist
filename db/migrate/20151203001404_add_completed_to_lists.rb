class AddCompletedToLists < ActiveRecord::Migration
  def change
    add_column :lists, :status, :boolean
  end
end
