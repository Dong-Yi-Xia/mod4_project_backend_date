class CreateOutfits < ActiveRecord::Migration[6.0]
  def change
    create_table :outfits do |t|
      t.string :outfitname
      t.string :headwear
      t.string :topwear
      t.string :bottomwear
      t.string :shoe
      t.string :accessories
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
