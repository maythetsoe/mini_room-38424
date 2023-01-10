class AddMiniRoomToDonations < ActiveRecord::Migration[6.0]
  def change
    add_reference :donations, :mini_room, null: false, foreign_key: true
  end
end
