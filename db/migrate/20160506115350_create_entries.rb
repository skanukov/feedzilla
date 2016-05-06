class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :feed, foreign_key: true
      t.string :title
      t.string :link
      t.text :content
      t.datetime :published_at

      t.timestamps
    end
  end
end
