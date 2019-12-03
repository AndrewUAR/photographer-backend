class CreatePhotoSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_sessions do |t|
      t.integer :client_id
      t.integer :photographer_id
      t.string :type
      t.integer :price
      t.integer :location, array: true, default: []
      t.datetime :appointment
      t.timestamps
    end
  end
end
