class CreateMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :group_id
      t.boolean :approved, default: false
      t.timestamps
    end
  end
end
