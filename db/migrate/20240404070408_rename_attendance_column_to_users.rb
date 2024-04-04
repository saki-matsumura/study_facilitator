class RenameAttendanceColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :attendance, :target
  end
end
