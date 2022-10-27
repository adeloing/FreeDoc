class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :city
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
      t.belongs_to :appointment, index: true
      t.timestamps
    end
  end
end
