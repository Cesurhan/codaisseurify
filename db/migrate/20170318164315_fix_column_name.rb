class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :songs, :nomination, :award
  end
end
