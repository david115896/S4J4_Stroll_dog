class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :City_name

      t.timestamps
    end
  end
end
