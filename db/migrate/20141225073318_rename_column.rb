class RenameColumn < ActiveRecord::Migration
  def change
      rename_column :comments , :media_id , :medium_id
  end
end
