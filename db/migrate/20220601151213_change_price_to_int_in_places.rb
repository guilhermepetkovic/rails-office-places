class ChangePriceToIntInPlaces < ActiveRecord::Migration[6.1]
  def change
    change_column :places, :price, :integer
  end
end
