class CreateUserreads < ActiveRecord::Migration[5.2]
  def change
    create_table :userreads do |t|
      t.integer :comic_id
      t.integer :user_id
      t.integer :vol

      t.timestamps
    end
  end
end
