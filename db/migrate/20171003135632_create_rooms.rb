class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :room_no
      t.boolean :premier
      t.boolean :en_suite
      t.integer :capacity

      t.timestamps
    end
  end
end
