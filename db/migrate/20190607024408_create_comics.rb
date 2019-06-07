class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :author
      t.string :title

      t.timestamps
    end
  end
end
