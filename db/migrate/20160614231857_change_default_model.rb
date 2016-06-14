class ChangeDefaultModel < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:artworks, :model, 'inception')
  end
end
