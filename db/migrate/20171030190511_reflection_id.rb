class ReflectionId < ActiveRecord::Migration[5.1]
  def change
    add_column :reflections, :reflection_id, :integer
  end
end
