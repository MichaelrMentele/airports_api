class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :name, :city, :country
      t.string :iata_faa, :icao
      t.float :latitude, :longitude
      t.integer :altitude
      t.string :timezone
      t.timestamps
    end
  end
end
