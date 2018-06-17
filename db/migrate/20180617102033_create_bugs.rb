class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.text :description
      t.text :os
      t.references :user
      t.timestamps null: false
    end
  end
end
