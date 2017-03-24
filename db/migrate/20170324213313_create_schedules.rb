class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.datetime :due_at

      t.timestamps
    end
  end
end
