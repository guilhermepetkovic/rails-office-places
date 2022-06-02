class AddImgUrlToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :img_url, :string
  end
end
