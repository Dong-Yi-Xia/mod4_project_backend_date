class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :gender
      t.string :bio
      t.integer :looks
      t.integer :smarts
      t.integer :athletic
      t.integer :finance
      t.integer :kindness

      t.timestamps
    end
  end
end
