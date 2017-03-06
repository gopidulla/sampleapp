class CreateComplaintSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :complaint_searches do |t|

      t.timestamps
    end
  end
end
