class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :copies
      t.string :isbn

      t.timestamps
    end
  end
end
