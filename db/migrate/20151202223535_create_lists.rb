class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :action
      t.string :details
      t.string :author

      t.timestamps null: false
    end
  end
end
