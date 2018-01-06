class ChangeTableName < ActiveRecord::Migration[5.1]
  def change
    rename_table :comments, :reflections
  end
end
