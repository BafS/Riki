class CreateVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :versions do |t|
      t.string :title
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
