class AddUpdatedToComplaints < ActiveRecord::Migration[5.0]
  def change
    add_column :complaints, :updated_time, :datetime
  end
end
