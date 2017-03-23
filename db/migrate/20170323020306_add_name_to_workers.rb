class AddNameToWorkers < ActiveRecord::Migration[5.0]
  def change
    add_column :workers, :name, :string
  end
end
