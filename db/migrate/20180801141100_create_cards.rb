class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
    add_column :cards, :count_of_comments, :integer
      t.string :title, null: false
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
