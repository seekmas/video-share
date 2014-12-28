class DropColumn < ActiveRecord::Migration
  def change
      rename_column :media , :comment , :description
  end
end
