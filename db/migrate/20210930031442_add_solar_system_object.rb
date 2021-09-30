class AddSolarSystemObject < ActiveRecord::Migration[5.2]
  def change
    create_table :solar_system_objects do |t|
      t.string :body
      t.decimal :mean_radius, precision: 6
      t.decimal :mean_radius_rel, precision: 6
      t.decimal :volume, precision: 6
      t.decimal :volume_rel, precision: 6
      t.decimal :mass, precision: 6
      t.decimal :mass_rel, precision: 6
      t.decimal :density, precision: 6
      t.decimal :surface_gravity, precision: 6
      t.decimal :surface_gravity_rel, precision: 6
      t.string :type_of_object
      t.string :shape
    end
  end
end
