class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.references :assignature, index: true, foreign_key: true
      t.string :comments
      t.references :location, index: true, foreign_key: true
      t.references :schedule, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
