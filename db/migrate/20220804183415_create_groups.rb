class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string  :title
      t.integer :user_id #author
      t.boolean :private, default: false #for secret we need to change this datatype to enum and attr name to type
      t.timestamps
    end
  end
end
