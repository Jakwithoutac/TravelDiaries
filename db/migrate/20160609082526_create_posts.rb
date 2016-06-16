class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
        t.text :user_id
        t.text :title
        t.date :date
        t.text :body

      t.timestamps null: false
    end
  end
end
