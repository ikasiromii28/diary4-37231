class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string  :title     ,null: false
      t.text    :text
      t.integer :user_id   ,null: false
      t.integer :mood_id   ,null: false
      t.integer :weather_id,null: false
      t.timestamps
    end
  end
end
