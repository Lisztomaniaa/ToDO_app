class CreateDashboards < ActiveRecord::Migration[5.2]
  def change
    create_table :dashboards do |t|
          t.belongs_to :user, index: true
          t.references :owner, index: true
          t.string :title, null: false
          t.integer :member, null: false
          t.boolean :public, null: false
          t.integer :owner_id
      t.timestamps
    end
  end
end
