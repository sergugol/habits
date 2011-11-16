class CreateMissedDays < ActiveRecord::Migration
  def change
    create_table :missed_days do |t|
      t.datetime :date_missed
      t.references :habit
      t.timestamps
    end
  end
end
