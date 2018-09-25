class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :category
      t.string :isbn
      t.string :dewey_decimal_number
      t.integer :binding

      t.timestamps
    end
  end
end
