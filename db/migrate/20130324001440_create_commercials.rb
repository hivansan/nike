class CreateCommercials < ActiveRecord::Migration
  def change
    create_table :commercials do |t|
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
