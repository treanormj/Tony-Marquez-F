class DeleteTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :answers

    drop_table :questions

    create_table :comments do |t|
      t.string :name, null: false
      t.string :relationship_to_tony, null: false
      t.text :comment_or_story
      # putting null: false makes sure it is there.
      t.timestamps null: false
    end
  end
end
