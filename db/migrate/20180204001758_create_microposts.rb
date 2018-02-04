class CreateMicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.string :image
      t.string :comment

      t.timestamps
    end
  end
end
