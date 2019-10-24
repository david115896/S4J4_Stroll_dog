class ChangeColumnNameCityName < ActiveRecord::Migration[5.2]
  def change
	rename_column :cities, :City_name, :city_name

  end
end
