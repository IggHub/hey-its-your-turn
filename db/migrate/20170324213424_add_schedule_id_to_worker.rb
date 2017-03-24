class AddScheduleIdToWorker < ActiveRecord::Migration[5.0]
  def change
    add_reference :workers, :schedule, foreign_key: true
  end
end
