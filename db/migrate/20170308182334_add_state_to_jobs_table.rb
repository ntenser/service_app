class AddStateToJobsTable < ActiveRecord::Migration[5.0]
  def change
    change_table :jobs do |t|
      t.string :state, default: "pending"
    end
  end
end
