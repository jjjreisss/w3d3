class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :url_id, null: false
      t.integer :visitor_id, null: false
      t.timestamp
    end
    add_index :visits, :url_id
    add_index :visits, :visitor_id
  end
end
