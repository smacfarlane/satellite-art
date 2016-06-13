class CreateArtworks < ActiveRecord::Migration[5.0]
  def change
    create_table :artworks do |t|
      t.string :style_id
      t.string :image_id
      t.string :model, default: 'vgg', null: false
      t.integer :size, default: 500, null: false
      t.string :smoothness, default: 0, null: false
      t.integer :num_iters, default: 500, null: false
      t.string :status, default: 'pending', null: false

      t.timestamps
    end
  end
end
