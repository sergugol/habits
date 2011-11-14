class AddNewFieldsToHabit < ActiveRecord::Migration
  def change
    add_column :habits, :type, :string
    add_column :habits, :start_date, :datetime
    add_column :habits, :last_done, :datetime
    add_column :habits, :active, :boolean
    add_column :habits, :attempts, :integer
  end
end
