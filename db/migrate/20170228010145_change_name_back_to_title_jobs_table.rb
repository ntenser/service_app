class ChangeNameBackToTitleJobsTable < ActiveRecord::Migration[5.0]
  def change
  change_table :jobs do |t|
    t.remove :name
    t.string :title
  end
end
end
