class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :tytul
      t.text :tresc

      t.timestamps null: false
    end
  end
end
