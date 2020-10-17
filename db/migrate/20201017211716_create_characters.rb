class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :occupation
      t.integer :lovePoint
      t.boolean :favorite
      t.string :bio
      t.string :imageURL

      t.timestamps
    end
  end
end
