class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn, unique: true
      t.string :description
      t.string :author
    end
  end
end
