class CreateFollors < ActiveRecord::Migration[6.1]
  def change
    create_table :follors do |t|
      t.integer :follor_id
      t.integer :follower_id
      t.timestamps
    end
  end
end
