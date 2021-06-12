class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fio
      t.string :snils
      t.text :about_me
      t.string :phone_number
      t.string :social_media
      t.string :email
      t.text :competence

      t.timestamps
    end
  end
end
