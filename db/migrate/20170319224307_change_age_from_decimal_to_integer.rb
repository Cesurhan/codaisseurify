class ChangeAgeFromDecimalToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :artists, :age, :integer
  end
end
