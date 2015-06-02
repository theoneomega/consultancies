class CreateAssignatures < ActiveRecord::Migration
  def change
    create_table :assignatures do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
