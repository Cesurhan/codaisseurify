class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :age
      t.string :origin

      t.timestamps
    end
  end
end
