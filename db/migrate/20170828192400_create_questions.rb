class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      # putting null: false makes sure it is there.
      t.timestamps null: false
    end
  end
end
