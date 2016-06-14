class CreateSources < ActiveRecord::Migration[5.0]
  def change
    create_table :sources do |t|
      t.string :image_id
      t.string :name, null: false

      t.timestamps
    end
  end
end
