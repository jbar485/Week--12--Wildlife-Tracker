class CreateSightings < ActiveRecord::Migration[5.1]
  def change
    create_table :sightings do |t|
      t.column(:location, :string)
      t.column(:longitude, :integer)
      t.column(:latitude, :integer)
      t.column(:animal_id, :integer)

      t.timestamps()
    end
  end
end
