class ChangeColumnNames < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :relationship_to_tony, :relationship
    rename_column :comments, :comment_or_story, :thoughts
  end
end
