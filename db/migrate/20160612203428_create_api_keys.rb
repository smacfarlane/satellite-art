class CreateApiKeys < ActiveRecord::Migration[5.0]
  def change
    create_table :api_keys do |t|
      t.string :token, null: false
      t.boolean :enabled, default: true

      t.timestamps
    end
  end
end
