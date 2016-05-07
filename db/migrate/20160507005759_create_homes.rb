class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :parcel
      t.string :recorded_date
      t.string :entry_num
      t.string :book
      t.string :page
      t.string :inst_type
      t.string :trustor_1
      t.string :mortgagor_1
      t.string :propad
      t.string :prop_city
      t.string :prop_state
      t.string :prop_zip
      t.string :owner
      t.string :mailad
      t.string :city
      t.string :state
      t.string :zip
      t.string :assessed
      t.string :land_value
      t.string :building_value
      t.string :propuse
      t.string :year_built
      t.string :lotsqft
      t.string :sqft
      t.string :bedbath
      t.string :bathroom
      t.string :fireplace
      t.string :structure
      t.string :subdivis
      t.string :zestimate

      t.timestamps null: false
    end
  end
end
