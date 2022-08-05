class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :user_id
      t.integer :parent_id #self referncing for replies
      t.text    :content
      t.timestamps
    end
  end
end
