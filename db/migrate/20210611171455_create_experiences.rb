class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :position
      t.string :start_date
      t.string :end_date
      t.string :responsibilities

      t.timestamps
    end
  end
end
