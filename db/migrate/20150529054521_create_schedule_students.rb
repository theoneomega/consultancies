class CreateScheduleStudents < ActiveRecord::Migration
  def change
    create_table :schedule_students, {:id => false} do |t|
      t.references :schedule, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
    execute "ALTER TABLE schedule_students ADD PRIMARY KEY (schedule_id,student_id);"

  end
end
