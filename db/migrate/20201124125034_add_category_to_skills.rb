class AddCategoryToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :category, :string
  end
end
