class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :email
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
