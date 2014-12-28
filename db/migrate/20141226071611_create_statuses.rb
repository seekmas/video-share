class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.text :status
      t.string :user_id

      t.timestamps
    end
  end
end
