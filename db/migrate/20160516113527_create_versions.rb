class CreateVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :versions do |t|
      t.string :title
      t.text :content
      t.Date :date

      t.timestamps
    end
  end
end
