class AddSizeToDonations < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :size_id, :integer
  end
end
