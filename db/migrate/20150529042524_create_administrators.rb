class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.boolean :role
      t.string :username

      t.timestamps null: false
    end
  end
end
