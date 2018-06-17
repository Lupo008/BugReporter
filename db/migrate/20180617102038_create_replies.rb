class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :comment
      t.references :bug
      t.references :user
      t.timestamps null: false
    end
  end
end
