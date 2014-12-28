class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :subject
      t.text :comment
      t.string :video

      t.timestamps
    end
  end
end
