class CreatePostScores < ActiveRecord::Migration
  def change
    create_table :post_scores do |t|
      t.integer :user_id
      t.integer :score
      t.integer :post_id, :index => true

      t.timestamps null: false
    end
  end
end
