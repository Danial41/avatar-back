class ChangeIntegerFormatInProjects < ActiveRecord::Migration[6.1]
  def change
    change_column :projects, :option, :string
  end
end
