class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.belongs_to :dashbords, index: true
      t.string :title, null: false

      t.timestamps
    end
  end
end
