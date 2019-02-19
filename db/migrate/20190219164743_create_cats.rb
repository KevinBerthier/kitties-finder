class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :address
      t.date :found_at

      t.timestamps
    end
  end
end
