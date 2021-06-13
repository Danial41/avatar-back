class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :date_and_time

      t.timestamps
    end
  end
end
