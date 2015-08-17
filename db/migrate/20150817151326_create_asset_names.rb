class CreateAssetNames < ActiveRecord::Migration
  def change
    create_table :asset_names do |t|
      t.string :game
      t.integer :score

      t.timestamps null: false
    end
  end
end
