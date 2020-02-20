class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender, :default => nil
      t.string :email
      t.string :password_digest
      t.integer :role
      t.integer :price, :default => nil
      t.integer :location, array: true, default: []
      t.string :skill, array: true, default: []
      t.string :language, array: true, default: []
      t.timestamps
    end
  end
end
