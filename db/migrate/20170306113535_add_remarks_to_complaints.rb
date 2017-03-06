class AddRemarksToComplaints < ActiveRecord::Migration[5.0]
  def change
    add_column :complaints, :remarks, :string
  end
end
