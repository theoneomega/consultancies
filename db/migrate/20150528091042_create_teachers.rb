class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :last_name2
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
