class CreateShortUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :short_urls do |t|
      t.string :url, null: false
      t.string :short_url, unique: true

      t.timestamps
    end
    
    add_index :short_urls, :full_link
    add_index :short_urls, :short_url, unique: true
  end
end