class CreateMany < ActiveRecord::Migration
  def change
    remove_column(:employees, :project_id)

    create_table(:assignments) do |t|
      t.column(:hours_allocated, :integer)
      t.column(:assigned_date, :date)
      t.column(:completion_date, :date)

      t.timestamps()
    end
  end
end
