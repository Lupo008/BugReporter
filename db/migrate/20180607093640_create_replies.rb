class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
