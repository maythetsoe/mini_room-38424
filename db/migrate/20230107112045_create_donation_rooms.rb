class CreateDonationRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :donation_rooms do |t|
      # t.references :mini_room, null: false, foreign_key: true
      t.references :donation, null: false, foreign_key: true
      t.timestamps
    end
  end
end
