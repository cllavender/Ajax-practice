class AddFlagToPosts < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :posts, :flag_at, :datetime
  end
end
