class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :specialty
      t.string :grade
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
