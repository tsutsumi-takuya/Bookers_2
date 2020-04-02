class CreateUserimages < ActiveRecord::Migration[5.2]
  def change
    create_table :userimages do |t|
      t.text :user_name
      t.integer :user_id

      t.timestamps
    end
  end
end
