class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :description
      t.string :os

      t.timestamps null: false
    end
  end
end
